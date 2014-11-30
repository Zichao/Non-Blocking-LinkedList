
#define NUM_NODE 5

typedef Node {
	bit isDeleted; // Mark if current node has been logically deleted
	int key;
	int next; // Index of next node in linked-list array
}

Node list[NUM_NODE];
int head = -1;

int stack[NUM_NODE] = {0,1,2,3,4}; // Keep all free indices in the array 'list'
int top = 0; // Point to the first available index's position in stack  

init {
	printf("stack[3]:%d\n", stack[3]);
}
