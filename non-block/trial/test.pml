proctype two(int x; int y) {
	if
	:: (x > y && x == 6) -> printf("yes, %d\n", x/2);
	:: else -> printf("no\n");
	fi
}

init {
	run two(6,4);
}
