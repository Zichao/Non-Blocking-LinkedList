proctype two() {
	int num = 0;
	do
	:: (num == 0) ->
		printf("==0\n"); 
		break;
	:: else ->
		if 
		:: (num != 1) -> 
			printf("!=1\n");
			break;
		fi;
	od;
}

proctype selfIncrease(int n) {
	printf("Original value:%d\n", n);
	n++;
	printf("After n++:%d\n", n);
}

init {
	run selfIncrease(2);
}
