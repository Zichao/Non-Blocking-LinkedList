#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC :init: */
	case 3: // STATE 1 - lock_linkedList.pml:161 - [(run initlist())] (0:0:0 - 1)
		IfNotBlocked
		reached[4][1] = 1;
		if (!(addproc(II, 1, 0, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - lock_linkedList.pml:162 - [(timeout)] (0:0:0 - 1)
		IfNotBlocked
		reached[4][2] = 1;
		if (!(((trpt->tau)&1)))
			continue;
		_m = 1; goto P999; /* 0 */
	case 5: // STATE 3 - lock_linkedList.pml:162 - [(run insert(10))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][3] = 1;
		if (!(addproc(II, 1, 2, 10, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - lock_linkedList.pml:162 - [(run delete(0))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][4] = 1;
		if (!(addproc(II, 1, 3, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 6 - lock_linkedList.pml:163 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[4][6] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC delete */
	case 8: // STATE 1 - lock_linkedList.pml:125 - [(!(done[1]))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		if (!( !(((int)((P3 *)this)->done[1]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 2 - lock_linkedList.pml:126 - [((top==5))] (43:0:0 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		if (!((((int)now.top)==5)))
			continue;
		/* merge: goto :b3(0, 3, 43) */
		reached[3][3] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 10: // STATE 7 - lock_linkedList.pml:129 - [.(goto)] (0:41:0 - 1)
		IfNotBlocked
		reached[3][7] = 1;
		;
		/* merge: .(goto)(0, 42, 41) */
		reached[3][42] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 11: // STATE 5 - lock_linkedList.pml:127 - [done[1] = 1] (0:41:1 - 1)
		IfNotBlocked
		reached[3][5] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)this)->done[1]);
		((P3 *)this)->done[1] = 1;
#ifdef VAR_RANGES
		logval("delete:done[1]", ((int)((P3 *)this)->done[1]));
#endif
		;
		/* merge: .(goto)(41, 7, 41) */
		reached[3][7] = 1;
		;
		/* merge: .(goto)(0, 42, 41) */
		reached[3][42] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 12: // STATE 9 - lock_linkedList.pml:130 - [(((!(done[2])&&done[1])&&(lock==1)))] (41:0:2 - 1)
		IfNotBlocked
		reached[3][9] = 1;
		if (!((( !(((int)((P3 *)this)->done[2]))&&((int)((P3 *)this)->done[1]))&&(((int)now.lock)==1))))
			continue;
		/* merge: lock = 0(41, 10, 41) */
		reached[3][10] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.lock);
		now.lock = 0;
#ifdef VAR_RANGES
		logval("lock", ((int)now.lock));
#endif
		;
		/* merge: done[2] = 1(41, 11, 41) */
		reached[3][11] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)this)->done[2]);
		((P3 *)this)->done[2] = 1;
#ifdef VAR_RANGES
		logval("delete:done[2]", ((int)((P3 *)this)->done[2]));
#endif
		;
		/* merge: .(goto)(0, 42, 41) */
		reached[3][42] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 13: // STATE 13 - lock_linkedList.pml:133 - [(((!(done[3])&&done[2])&&done[1]))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][13] = 1;
		if (!((( !(((int)((P3 *)this)->done[3]))&&((int)((P3 *)this)->done[2]))&&((int)((P3 *)this)->done[1]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 14 - lock_linkedList.pml:134 - [(run search(ret_left,ret_right,val))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][14] = 1;
		if (!(addproc(II, 1, 1, ((P3 *)this)->ret_left, ((P3 *)this)->ret_right, ((P3 *)this)->val)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 15 - lock_linkedList.pml:135 - [ret_left?left] (0:0:1 - 1)
		reached[3][15] = 1;
		if (q_len(((P3 *)this)->ret_left) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((int)((P3 *)this)->left);
		;
		((P3 *)this)->left = qrecv(((P3 *)this)->ret_left, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("delete:left", ((int)((P3 *)this)->left));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P3 *)this)->ret_left);
		sprintf(simtmp, "%d", ((int)((P3 *)this)->left)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 16: // STATE 16 - lock_linkedList.pml:136 - [ret_right?right] (41:0:2 - 1)
		reached[3][16] = 1;
		if (q_len(((P3 *)this)->ret_right) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)this)->right);
		;
		((P3 *)this)->right = qrecv(((P3 *)this)->ret_right, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("delete:right", ((int)((P3 *)this)->right));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P3 *)this)->ret_right);
		sprintf(simtmp, "%d", ((int)((P3 *)this)->right)); strcat(simvals, simtmp);		}
#endif
		;
		/* merge: done[3] = 1(0, 17, 41) */
		reached[3][17] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)this)->done[3]);
		((P3 *)this)->done[3] = 1;
#ifdef VAR_RANGES
		logval("delete:done[3]", ((int)((P3 *)this)->done[3]));
#endif
		;
		/* merge: .(goto)(0, 42, 41) */
		reached[3][42] = 1;
		;
		_m = 4; goto P999; /* 2 */
	case 17: // STATE 19 - lock_linkedList.pml:140 - [((((!(done[4])&&done[3])&&done[2])&&done[1]))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][19] = 1;
		if (!(((( !(((int)((P3 *)this)->done[4]))&&((int)((P3 *)this)->done[3]))&&((int)((P3 *)this)->done[2]))&&((int)((P3 *)this)->done[1]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 20 - lock_linkedList.pml:141 - [(((right==255)||(value[right]!=val)))] (43:0:2 - 1)
		IfNotBlocked
		reached[3][20] = 1;
		if (!(((((int)((P3 *)this)->right)==255)||(((int)now.value[ Index(((int)((P3 *)this)->right), 5) ])!=((P3 *)this)->val))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: right */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P3 *)this)->right;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)this)->right = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: val */  (trpt+1)->bup.ovals[1] = ((P3 *)this)->val;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)this)->val = 0;
		/* merge: goto :b3(0, 21, 43) */
		reached[3][21] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 19: // STATE 35 - lock_linkedList.pml:151 - [.(goto)] (0:41:1 - 1)
		IfNotBlocked
		reached[3][35] = 1;
		;
		/* merge: done[4] = 1(41, 36, 41) */
		reached[3][36] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)this)->done[4]);
		((P3 *)this)->done[4] = 1;
#ifdef VAR_RANGES
		logval("delete:done[4]", ((int)((P3 *)this)->done[4]));
#endif
		;
		/* merge: .(goto)(0, 42, 41) */
		reached[3][42] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 20: // STATE 23 - lock_linkedList.pml:144 - [((left==255))] (33:0:1 - 1)
		IfNotBlocked
		reached[3][23] = 1;
		if (!((((int)((P3 *)this)->left)==255)))
			continue;
		/* merge: head = 255(0, 24, 33) */
		reached[3][24] = 1;
		(trpt+1)->bup.oval = ((int)now.head);
		now.head = 255;
#ifdef VAR_RANGES
		logval("head", ((int)now.head));
#endif
		;
		/* merge: .(goto)(0, 28, 33) */
		reached[3][28] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 21: // STATE 26 - lock_linkedList.pml:147 - [next[left] = next[right]] (0:0:1 - 1)
		IfNotBlocked
		reached[3][26] = 1;
		(trpt+1)->bup.oval = ((int)now.next[ Index(((int)((P3 *)this)->left), 5) ]);
		now.next[ Index(((P3 *)this)->left, 5) ] = ((int)now.next[ Index(((int)((P3 *)this)->right), 5) ]);
#ifdef VAR_RANGES
		logval("next[delete:left]", ((int)now.next[ Index(((int)((P3 *)this)->left), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 29 - lock_linkedList.pml:149 - [value[right] = 255] (0:41:5 - 1)
		IfNotBlocked
		reached[3][29] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.value[ Index(((int)((P3 *)this)->right), 5) ]);
		now.value[ Index(((P3 *)this)->right, 5) ] = 255;
#ifdef VAR_RANGES
		logval("value[delete:right]", ((int)now.value[ Index(((int)((P3 *)this)->right), 5) ]));
#endif
		;
		/* merge: next[right] = 255(41, 30, 41) */
		reached[3][30] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.next[ Index(((int)((P3 *)this)->right), 5) ]);
		now.next[ Index(((P3 *)this)->right, 5) ] = 255;
#ifdef VAR_RANGES
		logval("next[delete:right]", ((int)now.next[ Index(((int)((P3 *)this)->right), 5) ]));
#endif
		;
		/* merge: stack[top] = right(41, 31, 41) */
		reached[3][31] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.stack[ Index(((int)now.top), 5) ]);
		now.stack[ Index(now.top, 5) ] = ((int)((P3 *)this)->right);
#ifdef VAR_RANGES
		logval("stack[top]", ((int)now.stack[ Index(((int)now.top), 5) ]));
#endif
		;
		/* merge: top = (top+1)(41, 32, 41) */
		reached[3][32] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.top);
		now.top = (((int)now.top)+1);
#ifdef VAR_RANGES
		logval("top", ((int)now.top));
#endif
		;
		/* merge: .(goto)(41, 35, 41) */
		reached[3][35] = 1;
		;
		/* merge: done[4] = 1(41, 36, 41) */
		reached[3][36] = 1;
		(trpt+1)->bup.ovals[4] = ((int)((P3 *)this)->done[4]);
		((P3 *)this)->done[4] = 1;
#ifdef VAR_RANGES
		logval("delete:done[4]", ((int)((P3 *)this)->done[4]));
#endif
		;
		/* merge: .(goto)(0, 42, 41) */
		reached[3][42] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 23: // STATE 38 - lock_linkedList.pml:154 - [(((((!(done[5])&&done[4])&&done[3])&&done[2])&&done[1]))] (41:0:1 - 1)
		IfNotBlocked
		reached[3][38] = 1;
		if (!((((( !(((int)((P3 *)this)->done[5]))&&((int)((P3 *)this)->done[4]))&&((int)((P3 *)this)->done[3]))&&((int)((P3 *)this)->done[2]))&&((int)((P3 *)this)->done[1]))))
			continue;
		/* merge: lock = 1(0, 39, 41) */
		reached[3][39] = 1;
		(trpt+1)->bup.oval = ((int)now.lock);
		now.lock = 1;
#ifdef VAR_RANGES
		logval("lock", ((int)now.lock));
#endif
		;
		/* merge: .(goto)(0, 42, 41) */
		reached[3][42] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 24: // STATE 44 - lock_linkedList.pml:158 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][44] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC insert */
	case 25: // STATE 1 - lock_linkedList.pml:77 - [(!(done[1]))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (!( !(((int)((P2 *)this)->done[1]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 2 - lock_linkedList.pml:78 - [((top==0))] (45:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!((((int)now.top)==0)))
			continue;
		/* merge: goto :b2(0, 3, 45) */
		reached[2][3] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 27: // STATE 7 - lock_linkedList.pml:82 - [.(goto)] (0:43:0 - 1)
		IfNotBlocked
		reached[2][7] = 1;
		;
		/* merge: .(goto)(0, 44, 43) */
		reached[2][44] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 28: // STATE 5 - lock_linkedList.pml:80 - [done[1] = 1] (0:43:1 - 1)
		IfNotBlocked
		reached[2][5] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)this)->done[1]);
		((P2 *)this)->done[1] = 1;
#ifdef VAR_RANGES
		logval("insert:done[1]", ((int)((P2 *)this)->done[1]));
#endif
		;
		/* merge: .(goto)(43, 7, 43) */
		reached[2][7] = 1;
		;
		/* merge: .(goto)(0, 44, 43) */
		reached[2][44] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 29: // STATE 9 - lock_linkedList.pml:83 - [(((!(done[2])&&done[1])&&(lock==1)))] (43:0:2 - 1)
		IfNotBlocked
		reached[2][9] = 1;
		if (!((( !(((int)((P2 *)this)->done[2]))&&((int)((P2 *)this)->done[1]))&&(((int)now.lock)==1))))
			continue;
		/* merge: lock = 0(43, 10, 43) */
		reached[2][10] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.lock);
		now.lock = 0;
#ifdef VAR_RANGES
		logval("lock", ((int)now.lock));
#endif
		;
		/* merge: done[2] = 1(43, 11, 43) */
		reached[2][11] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)this)->done[2]);
		((P2 *)this)->done[2] = 1;
#ifdef VAR_RANGES
		logval("insert:done[2]", ((int)((P2 *)this)->done[2]));
#endif
		;
		/* merge: .(goto)(0, 44, 43) */
		reached[2][44] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 30: // STATE 13 - lock_linkedList.pml:86 - [(((!(done[3])&&done[2])&&done[1]))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][13] = 1;
		if (!((( !(((int)((P2 *)this)->done[3]))&&((int)((P2 *)this)->done[2]))&&((int)((P2 *)this)->done[1]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 14 - lock_linkedList.pml:87 - [(run search(ret_left,ret_right,val))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][14] = 1;
		if (!(addproc(II, 1, 1, ((P2 *)this)->ret_left, ((P2 *)this)->ret_right, ((int)((P2 *)this)->val))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 15 - lock_linkedList.pml:88 - [ret_left?left] (0:0:1 - 1)
		reached[2][15] = 1;
		if (q_len(((P2 *)this)->ret_left) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((int)((P2 *)this)->left);
		;
		((P2 *)this)->left = qrecv(((P2 *)this)->ret_left, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("insert:left", ((int)((P2 *)this)->left));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P2 *)this)->ret_left);
		sprintf(simtmp, "%d", ((int)((P2 *)this)->left)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 33: // STATE 16 - lock_linkedList.pml:89 - [ret_right?right] (43:0:2 - 1)
		reached[2][16] = 1;
		if (q_len(((P2 *)this)->ret_right) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P2 *)this)->right);
		;
		((P2 *)this)->right = qrecv(((P2 *)this)->ret_right, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("insert:right", ((int)((P2 *)this)->right));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P2 *)this)->ret_right);
		sprintf(simtmp, "%d", ((int)((P2 *)this)->right)); strcat(simvals, simtmp);		}
#endif
		;
		/* merge: done[3] = 1(0, 17, 43) */
		reached[2][17] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)this)->done[3]);
		((P2 *)this)->done[3] = 1;
#ifdef VAR_RANGES
		logval("insert:done[3]", ((int)((P2 *)this)->done[3]));
#endif
		;
		/* merge: .(goto)(0, 44, 43) */
		reached[2][44] = 1;
		;
		_m = 4; goto P999; /* 2 */
	case 34: // STATE 19 - lock_linkedList.pml:93 - [((((!(done[4])&&done[3])&&done[2])&&done[1]))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][19] = 1;
		if (!(((( !(((int)((P2 *)this)->done[4]))&&((int)((P2 *)this)->done[3]))&&((int)((P2 *)this)->done[2]))&&((int)((P2 *)this)->done[1]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 20 - lock_linkedList.pml:94 - [(((right!=255)&&(value[right]==val)))] (45:0:3 - 1)
		IfNotBlocked
		reached[2][20] = 1;
		if (!(((((int)((P2 *)this)->right)!=255)&&(((int)now.value[ Index(((int)((P2 *)this)->right), 5) ])==((int)((P2 *)this)->val)))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: right */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P2 *)this)->right;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)this)->right = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: val */  (trpt+1)->bup.ovals[1] = ((P2 *)this)->val;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)this)->val = 0;
		/* merge: lock = 1(45, 21, 45) */
		reached[2][21] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.lock);
		now.lock = 1;
#ifdef VAR_RANGES
		logval("lock", ((int)now.lock));
#endif
		;
		/* merge: goto :b2(45, 22, 45) */
		reached[2][22] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 36: // STATE 29 - lock_linkedList.pml:102 - [.(goto)] (0:43:0 - 1)
		IfNotBlocked
		reached[2][29] = 1;
		;
		/* merge: .(goto)(0, 44, 43) */
		reached[2][44] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 37: // STATE 24 - lock_linkedList.pml:98 - [top = (top-1)] (0:43:4 - 1)
		IfNotBlocked
		reached[2][24] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.top);
		now.top = (((int)now.top)-1);
#ifdef VAR_RANGES
		logval("top", ((int)now.top));
#endif
		;
		/* merge: curr = stack[top](43, 25, 43) */
		reached[2][25] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)this)->curr);
		((P2 *)this)->curr = ((int)now.stack[ Index(((int)now.top), 5) ]);
#ifdef VAR_RANGES
		logval("insert:curr", ((int)((P2 *)this)->curr));
#endif
		;
		/* merge: value[curr] = val(43, 26, 43) */
		reached[2][26] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.value[ Index(((int)((P2 *)this)->curr), 5) ]);
		now.value[ Index(((P2 *)this)->curr, 5) ] = ((int)((P2 *)this)->val);
#ifdef VAR_RANGES
		logval("value[insert:curr]", ((int)now.value[ Index(((int)((P2 *)this)->curr), 5) ]));
#endif
		;
		/* merge: done[4] = 1(43, 27, 43) */
		reached[2][27] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P2 *)this)->done[4]);
		((P2 *)this)->done[4] = 1;
#ifdef VAR_RANGES
		logval("insert:done[4]", ((int)((P2 *)this)->done[4]));
#endif
		;
		/* merge: .(goto)(43, 29, 43) */
		reached[2][29] = 1;
		;
		/* merge: .(goto)(0, 44, 43) */
		reached[2][44] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 38: // STATE 31 - lock_linkedList.pml:104 - [(((((!(done[5])&&done[4])&&done[3])&&done[2])&&done[1]))] (37:0:1 - 1)
		IfNotBlocked
		reached[2][31] = 1;
		if (!((((( !(((int)((P2 *)this)->done[5]))&&((int)((P2 *)this)->done[4]))&&((int)((P2 *)this)->done[3]))&&((int)((P2 *)this)->done[2]))&&((int)((P2 *)this)->done[1]))))
			continue;
		/* merge: next[curr] = right(0, 32, 37) */
		reached[2][32] = 1;
		(trpt+1)->bup.oval = ((int)now.next[ Index(((int)((P2 *)this)->curr), 5) ]);
		now.next[ Index(((P2 *)this)->curr, 5) ] = ((int)((P2 *)this)->right);
#ifdef VAR_RANGES
		logval("next[insert:curr]", ((int)now.next[ Index(((int)((P2 *)this)->curr), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 39: // STATE 33 - lock_linkedList.pml:106 - [((left==255))] (46:0:4 - 1)
		IfNotBlocked
		reached[2][33] = 1;
		if (!((((int)((P2 *)this)->left)==255)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: left */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P2 *)this)->left;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)this)->left = 0;
		/* merge: head = curr(46, 34, 46) */
		reached[2][34] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.head);
		now.head = ((int)((P2 *)this)->curr);
#ifdef VAR_RANGES
		logval("head", ((int)now.head));
#endif
		;
		/* merge: .(goto)(46, 38, 46) */
		reached[2][38] = 1;
		;
		/* merge: done[5] = 1(46, 39, 46) */
		reached[2][39] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P2 *)this)->done[5]);
		((P2 *)this)->done[5] = 1;
#ifdef VAR_RANGES
		logval("insert:done[5]", ((int)((P2 *)this)->done[5]));
#endif
		;
		/* merge: lock = 1(46, 40, 46) */
		reached[2][40] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.lock);
		now.lock = 1;
#ifdef VAR_RANGES
		logval("lock", ((int)now.lock));
#endif
		;
		/* merge: goto :b2(46, 41, 46) */
		reached[2][41] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 40: // STATE 36 - lock_linkedList.pml:109 - [next[left] = curr] (0:46:3 - 1)
		IfNotBlocked
		reached[2][36] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.next[ Index(((int)((P2 *)this)->left), 5) ]);
		now.next[ Index(((P2 *)this)->left, 5) ] = ((int)((P2 *)this)->curr);
#ifdef VAR_RANGES
		logval("next[insert:left]", ((int)now.next[ Index(((int)((P2 *)this)->left), 5) ]));
#endif
		;
		/* merge: .(goto)(46, 38, 46) */
		reached[2][38] = 1;
		;
		/* merge: done[5] = 1(46, 39, 46) */
		reached[2][39] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)this)->done[5]);
		((P2 *)this)->done[5] = 1;
#ifdef VAR_RANGES
		logval("insert:done[5]", ((int)((P2 *)this)->done[5]));
#endif
		;
		/* merge: lock = 1(46, 40, 46) */
		reached[2][40] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.lock);
		now.lock = 1;
#ifdef VAR_RANGES
		logval("lock", ((int)now.lock));
#endif
		;
		/* merge: goto :b2(46, 41, 46) */
		reached[2][41] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 41: // STATE 39 - lock_linkedList.pml:111 - [done[5] = 1] (0:46:2 - 3)
		IfNotBlocked
		reached[2][39] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P2 *)this)->done[5]);
		((P2 *)this)->done[5] = 1;
#ifdef VAR_RANGES
		logval("insert:done[5]", ((int)((P2 *)this)->done[5]));
#endif
		;
		/* merge: lock = 1(46, 40, 46) */
		reached[2][40] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock);
		now.lock = 1;
#ifdef VAR_RANGES
		logval("lock", ((int)now.lock));
#endif
		;
		/* merge: goto :b2(46, 41, 46) */
		reached[2][41] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 42: // STATE 46 - lock_linkedList.pml:116 - [-end-] (0:0:0 - 2)
		IfNotBlocked
		reached[2][46] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC search */
	case 43: // STATE 1 - lock_linkedList.pml:48 - [(!(done[1]))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!( !(((int)((P1 *)this)->done[1]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 2 - lock_linkedList.pml:49 - [((head==255))] (21:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((int)now.head)==255)))
			continue;
		/* merge: goto :b1(0, 3, 21) */
		reached[1][3] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 45: // STATE 7 - lock_linkedList.pml:53 - [.(goto)] (0:19:0 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		;
		/* merge: .(goto)(0, 20, 19) */
		reached[1][20] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 46: // STATE 5 - lock_linkedList.pml:51 - [t = head] (0:19:1 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->t);
		((P1 *)this)->t = ((int)now.head);
#ifdef VAR_RANGES
		logval("search:t", ((int)((P1 *)this)->t));
#endif
		;
		/* merge: .(goto)(19, 7, 19) */
		reached[1][7] = 1;
		;
		/* merge: .(goto)(0, 20, 19) */
		reached[1][20] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 47: // STATE 9 - lock_linkedList.pml:54 - [((!(done[2])&&done[1]))] (16:0:2 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		if (!(( !(((int)((P1 *)this)->done[2]))&&((int)((P1 *)this)->done[1]))))
			continue;
		/* merge: left = right(16, 10, 16) */
		reached[1][10] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->left);
		((P1 *)this)->left = ((int)((P1 *)this)->right);
#ifdef VAR_RANGES
		logval("search:left", ((int)((P1 *)this)->left));
#endif
		;
		/* merge: right = t(16, 11, 16) */
		reached[1][11] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)this)->right);
		((P1 *)this)->right = ((int)((P1 *)this)->t);
#ifdef VAR_RANGES
		logval("search:right", ((int)((P1 *)this)->right));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 48: // STATE 12 - lock_linkedList.pml:57 - [(((t==255)||(value[t]>=val)))] (21:0:2 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		if (!(((((int)((P1 *)this)->t)==255)||(((int)now.value[ Index(((int)((P1 *)this)->t), 5) ])>=((int)((P1 *)this)->val)))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: t */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->t;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->t = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: val */  (trpt+1)->bup.ovals[1] = ((P1 *)this)->val;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->val = 0;
		/* merge: goto :b1(0, 13, 21) */
		reached[1][13] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 49: // STATE 17 - lock_linkedList.pml:62 - [.(goto)] (0:19:0 - 1)
		IfNotBlocked
		reached[1][17] = 1;
		;
		/* merge: .(goto)(0, 20, 19) */
		reached[1][20] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 50: // STATE 15 - lock_linkedList.pml:60 - [t = next[t]] (0:19:1 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->t);
		((P1 *)this)->t = ((int)now.next[ Index(((int)((P1 *)this)->t), 5) ]);
#ifdef VAR_RANGES
		logval("search:t", ((int)((P1 *)this)->t));
#endif
		;
		/* merge: .(goto)(19, 17, 19) */
		reached[1][17] = 1;
		;
		/* merge: .(goto)(0, 20, 19) */
		reached[1][20] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 51: // STATE 22 - lock_linkedList.pml:65 - [in_left!left] (0:0:0 - 1)
		IfNotBlocked
		reached[1][22] = 1;
		if (q_full(((P1 *)this)->in_left))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P1 *)this)->in_left);
		sprintf(simtmp, "%d", ((int)((P1 *)this)->left)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P1 *)this)->in_left, 0, ((int)((P1 *)this)->left), 1);
		_m = 2; goto P999; /* 0 */
	case 52: // STATE 23 - lock_linkedList.pml:66 - [in_right!right] (0:0:0 - 1)
		IfNotBlocked
		reached[1][23] = 1;
		if (q_full(((P1 *)this)->in_right))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P1 *)this)->in_right);
		sprintf(simtmp, "%d", ((int)((P1 *)this)->right)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P1 *)this)->in_right, 0, ((int)((P1 *)this)->right), 1);
		_m = 2; goto P999; /* 0 */
	case 53: // STATE 24 - lock_linkedList.pml:67 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][24] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC initlist */
	case 54: // STATE 1 - lock_linkedList.pml:30 - [((curr<5))] (10:0:5 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((int)((P0 *)this)->curr)<5)))
			continue;
		/* merge: value[curr] = 255(10, 2, 10) */
		reached[0][2] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.value[ Index(((int)((P0 *)this)->curr), 5) ]);
		now.value[ Index(((P0 *)this)->curr, 5) ] = 255;
#ifdef VAR_RANGES
		logval("value[initlist:curr]", ((int)now.value[ Index(((int)((P0 *)this)->curr), 5) ]));
#endif
		;
		/* merge: next[curr] = 255(10, 3, 10) */
		reached[0][3] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.next[ Index(((int)((P0 *)this)->curr), 5) ]);
		now.next[ Index(((P0 *)this)->curr, 5) ] = 255;
#ifdef VAR_RANGES
		logval("next[initlist:curr]", ((int)now.next[ Index(((int)((P0 *)this)->curr), 5) ]));
#endif
		;
		/* merge: stack[top] = curr(10, 4, 10) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.stack[ Index(((int)now.top), 5) ]);
		now.stack[ Index(now.top, 5) ] = ((int)((P0 *)this)->curr);
#ifdef VAR_RANGES
		logval("stack[top]", ((int)now.stack[ Index(((int)now.top), 5) ]));
#endif
		;
		/* merge: curr = (curr+1)(10, 5, 10) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P0 *)this)->curr);
		((P0 *)this)->curr = (((int)((P0 *)this)->curr)+1);
#ifdef VAR_RANGES
		logval("initlist:curr", ((int)((P0 *)this)->curr));
#endif
		;
		/* merge: top = (top+1)(10, 6, 10) */
		reached[0][6] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.top);
		now.top = (((int)now.top)+1);
#ifdef VAR_RANGES
		logval("top", ((int)now.top));
#endif
		;
		/* merge: .(goto)(0, 11, 10) */
		reached[0][11] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 55: // STATE 8 - lock_linkedList.pml:37 - [((curr>=5))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		if (!((((int)((P0 *)this)->curr)>=5)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: curr */  (trpt+1)->bup.oval = ((P0 *)this)->curr;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->curr = 0;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 13 - lock_linkedList.pml:39 - [-end-] (0:0:0 - 3)
		IfNotBlocked
		reached[0][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

