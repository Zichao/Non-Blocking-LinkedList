proctype Hello() {
	printf("Hello process, my pid is: %d\n", _pid);
}

init {
	int lastpid;
	printf("passed first test!\n")
	printf("init process, my pid is: %d\n", _pid);
	
	lastpid = run Hello();
	printf("last pid was: %d\n", lastpid);
}