#define TRUE 1
#define FALSE 0
#define UNDEF 255

#define LISTSIZE        5
#define DELETESIZE	6
#define INSERTSIZE	6
#define SEARCHSIZE	3
#define INITSIZE	6

#define malloc(X)       top--; X = stack[top]
#define free(X)         \
        atomic{ value[X] = UNDEF; next[X] = UNDEF; stack[top] = X; top++}

byte stack[LISTSIZE]; /* available indices */
byte top = 0;

byte value[LISTSIZE];
byte next[LISTSIZE];

byte head = UNDEF;

bit lock = 1;

proctype initlist() {
	bit done[INITSIZE];
	byte curr = 0;

	do
	:: atomic{curr < LISTSIZE ->
		value[curr] = UNDEF;
		next[curr] = UNDEF;
		stack[top] = curr;
		curr++;
		top++;
	   }
	:: curr >= LISTSIZE -> break;
	od
}

proctype search(chan in_left; chan in_right; byte val) {
	bit done[SEARCHSIZE];
	byte t;	
	byte left  = UNDEF;
	byte right = UNDEF;

	printf("searching %d, head:%d\n", val, head);
	do
	:: atomic{!done[1] ->
		if :: head == UNDEF -> 
			break; 	
		:: else -> 
			t = head;
			done[1] = 1;
		fi
	   }
	:: atomic{!done[2] && done[1] ->
		left  = right;
		right = t;
		if :: (t == UNDEF || value[t] >= val) ->
			break;
		:: else -> 
			t = next[t];
		fi
	   }
	od
	printf("search %d[END]\n", val);
	
	in_left  ! left;
	in_right ! right;
}

proctype insert(byte val) {
	chan ret_left  = [1] of {byte};
	chan ret_right = [1] of {byte};
	bit done[INSERTSIZE];
	byte left, right;
	byte curr;
	
	do
	:: atomic{!done[1] ->
		printf("1. insert %d\n", val);
		if :: top == 0 ->
                        break; /* list is full {may return FALSE} */
                :: else -> done[1] = TRUE;
                fi
	   }
	:: atomic{!done[2] && done[1] && lock == 1 ->
		printf("2. insert %d\n", val);
		lock = 0; done[2] = TRUE;
	   }
	:: atomic{!done[3] && done[2] && done[1] ->
		printf("3. insert %d\n", val);
		
		run search(ret_left, ret_right, val);
		printf("waiting......\n");
		ret_left  ? left;
		ret_right ? right;
		printf("waiting[END]\n");
		done[3] = TRUE;
	   }
	:: atomic{!done[4] && done[3] && done[2] &&
		  done[1] ->
                printf("4. insert %d\n", val);

		if :: (right != UNDEF && value[right] == val) ->
			printf("insert %d [END]\n", val);
			lock = 1;
			break; /* do not insert any duplicate */
		:: else ->
			malloc(curr);
			value[curr] = val;
			done[4] = TRUE;
		fi
	    }
	:: atomic{!done[5] && done[4] && done[3] &&
		  done[2] && done[1] ->
                printf("5. insert %d\n", val);


		next[curr] = right;
		if :: left == UNDEF ->
			head = curr;
		:: else ->
			next[left] = curr;
		fi
		done[5] = TRUE;

		printf("insert %d [END]\n", val);
		lock = 1;
		break; 
	    }
	od
}

proctype delete(int val) {
	bit done[DELETESIZE];
	chan ret_left  = [1] of {byte};
	chan ret_right = [1] of {byte};
	byte left, right;

	do
	:: atomic{!done[1] ->
		if :: top == LISTSIZE -> 
			printf("delete %d, the list is empty[END]\n", val);
			break; /* list is empty {may return FALSE} */
		:: else -> done[1] = TRUE;
		fi
	   }
	:: atomic{!done[2] && done[1] && lock == 1 ->
		printf("delete %d\n", val);
		lock = 0; done[2] = TRUE;
	   }
	:: atomic{!done[3] && done[2] && done[1] ->
		run search(ret_left, ret_right, val);
		ret_left  ? left;
		ret_right ? right;
		done[3] = TRUE;  
	   }
	:: atomic{!done[4] && done[3] && done[2] &&
		  done[1] ->
		if :: (right == UNDEF || value[right] != val) -> 
			printf("delete %d [END]\n", val);
			
			lock = 1;
			break; /* val isn't there  */
		:: else -> 
			if :: left == UNDEF ->
				head = UNDEF;
			:: else ->
				next[left] = next[right];
			fi
			free(right);
		fi
		done[4] = TRUE;
	    }
	:: atomic{!done[5] && done[4] && done[3] &&
		  done[2] && done[1] ->
		printf("delete %d [END]\n", val);

		lock = 1;
		done[5] = TRUE;
		break;
	    }
	od
}

init {
	run initlist();
	timeout -> atomic{
		run insert(10); 
		run insert(4); 
		//run delete(0);
		run insert(5);
		//run delete(4);
	};
	timeout -> atomic {
		run delete(4);
		run delete(0);
	};
}

