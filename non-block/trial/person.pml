typedef person {
	int age;
}

person_mem[9];
int person_valid[9];

init {
	int person_ct;
	int ptr; int tmp;
	atomic {
		person_ct = 1;
		do
		:: (person_ct >= 9) -> break;
		:: else ->
			if
			:: (person_valid[pserson_ct] == 0) ->
				person_valid[person_ct] = 1;
				break;
			:: else -> person_ct++; 
			fi 
		od;
		assert(person_ct < 9);
		tmp = person_ct;
		person_ct = 1;
	};
	ptr = tmp;
	person_mem[ptr].age = 24;
	d_step {
		person_valid[ptr] = 0;
		person_mem[ptr].age = 0
	};
}
