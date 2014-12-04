proctype p(int id) {
atomic {
	printf("id:%d\n", id);
	printf("[%d]%d\n", id, 1);
	printf("[%d]%d\n", id, 2);
	printf("[%d]%d\n", id, 3);
        printf("[%d]%d\n", id, 4);
}
}

init {
	run p(1);
	run p(100);
}
