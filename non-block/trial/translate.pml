
proctype isLarger(chan in_isLarger; int x; int y) {
	if
	:: (x >= y) -> in_isLarger ! 1; goto end
	:: else -> in_isLarger ! 0; goto end 
	fi
end:
	printf("End of isLarger\n");
}

proctype test(chan in_test; int a; int b) {
	if
	:: (a >= b) -> in_test ! a; goto end
	:: else -> in_test ! b; goto end
	fi
end:
	printf("End of test\n");
}

proctype main(chan in_main) {
	chan ret_test = [1] of {int};
	int x; int y; int tmp;
	x = 2;
	y = 3;
	run test(ret_test, x, y);
	ret_test ? tmp;
	printf("tmp: %d\n", tmp);
	in_main ! tmp;
	goto end;
end:
	printf("End of main\n");
}

init {
	chan ret_main = [1] of {int};
	chan ret_isLarger = [1] of {bit};

	printf("1. ret_main: %d\n", ret_main);
	run main(ret_main);
	printf("2. ret_main: %d\n", ret_main);
	//ret_main ? 0

	int x = 9;
	int y = 8;
	bit judge;
        printf("judge:%d", judge);
        run isLarger(ret_isLarger, x, y);
	ret_isLarger ? judge;
	printf("judge:%d", judge);
}
