
#define NUM_NODE 5
#define HEAD -2
#define TAIL -1

typedef Node {
	bit isDeleted = 0; // Mark if current node has been logically deleted
	int key;
	int next = TAIL; // Index of next node in linked-list array
}

Node list[NUM_NODE];
int head = HEAD;

int stack[NUM_NODE] = {0,1,2,3,4}; // Keep all free indices in the array 'list'
int top = NUM_NODE; // Point to the first available index's position in stack  

proctype insert(chan in_success; int key) {
atomic {
	chan ret_left  = [1] of {int};
        chan ret_right = [1] of {int};
	int left, right, index;
	int isSuccess = 0;

	printf("insert %d...\n", key);
	
	run search(ret_left, ret_right, key);
	ret_left  ? left;
	ret_right ? right;

	/* 1: Check if right-node.key == key */
	if
	:: (right != HEAD && right != TAIL && list[right].key == key) ->
		goto end;
	:: else -> skip;
	fi
	
	/* 2: Check if the list is full, no available space for more value*/
	if
	:: (top == 0) -> /* list is full */
		goto end;
	:: else -> skip;
	fi

	/* 3: Construct the node to insert */
	top--;
        index = stack[top];
        list[index].key = key;
        if
	:: (right == HEAD) -> list[index].next = TAIL;
	:: else -> list[index].next = right;
	fi

	/* 4: Find appropriate position to insert the new node */
	if
	:: (head == HEAD) ->
		head = index; 
	:: else ->
		list[left].next = index;
	fi
	isSuccess = 1;

end:
	in_success ! isSuccess;
printf("insert %d[end]\n", key);
}
}

proctype search(chan in_left; chan in_right; int key) {
atomic {
	printf("search...\n");
	int left  = HEAD;
	int right = HEAD;
	int t;	

	/* 1. Check if the list is empty  */
	if
	:: (head == HEAD || top == NUM_NODE) -> goto end;
	:: else -> skip;
	fi

	/* 2. Find the valid right_node */
	t = head;
	do
	:: (t == TAIL) -> break
	:: else ->
		if
		:: (list[t].key >= key && !list[t].isDeleted) -> 
			break;
		:: else ->
			t = list[t].next;
		fi
	od
	right = t;

	/* 3. Find the valid left-node */
	t = head;
	do
	:: (t == TAIL || t == right || list[t].key >= key) -> break;
	:: else ->
		if
		:: (list[t].key < key && !list[t].isDeleted) -> 
			left = t;
		:: else ->
			t = list[t].next;
		fi
	od

	/* 4. Remove nodes within (left, right) */
	run freeNode(left, right);

end:
	in_left  ! left;
	in_right ! right; 
}
}

proctype freeNode(int left; int right) {
atomic {
	printf("freeNode...\n");
	/* 1: Check if left is the head */
	int t;
	if
	:: (left == HEAD || left == TAIL) -> t = head; 
	:: else -> 
		t = list[left].next;
		if
		:: (t == TAIL) ->
			/* left is the last node, the whole list is full. */ 
			goto end;
		:: else -> skip; 
		fi
	fi

	/* 2: Remove all nodes within (left, right), note: non-inclusive */
	do
	:: (t == right) -> break;
	:: else ->
		// Modify the fields in deleted node
		int next = list[t].next;
		list[t].isDeleted = 0;
		list[t].next = TAIL;
		
		// Add the index of free cell into stack
		stack[top] = t;
		top++;
		
		t = next;
	od

	/* 3: Update head if left == HEAD by right */
	if
	:: (left == HEAD) ->
		if
		:: (right == TAIL) ->
			head = HEAD;
		:: else -> head = right; 
		fi
	:: else -> skip;
	fi

end:
	/* return */
}
}

init {
	chan ret_success = [1] of {bit};

	run insert(ret_success, 10);
	//run printList();
	
        run insert(ret_success, 50);
	//run printList();
	printf("head:%d\n", head);
        printf("head:%d\n", head);
        printf("head:%d\n", head);
        printf("head:%d\n", head);
        printf("head:%d\n", head);
}

/* Test Helper */
proctype printList() {
atomic {
	int t;
	t = head;
	
	printf("Linked-List:\n");
	do
	:: ((t == HEAD) || (t == TAIL)) -> break;
	:: else ->
		printf("key:%d next:%d\n", list[t].key, list[t].next);
		t = list[t].next;
	od	
	printf("Linked-List: {End}\n");
}
}
