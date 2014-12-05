	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;
;
		;
		
	case 5: // STATE 3
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 6: // STATE 4
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 7: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC delete */
;
		;
		;
		
	case 9: // STATE 2
		goto R999;
;
		
	case 10: // STATE 7
		goto R999;

	case 11: // STATE 5
		;
		((P3 *)this)->done[1] = trpt->bup.oval;
		;
		goto R999;

	case 12: // STATE 11
		;
		((P3 *)this)->done[2] = trpt->bup.ovals[1];
		now.lock = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 14: // STATE 14
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 15: // STATE 15
		;
		XX = 1;
		unrecv(((P3 *)this)->ret_left, XX-1, 0, ((int)((P3 *)this)->left), 1);
		((P3 *)this)->left = trpt->bup.oval;
		;
		;
		goto R999;

	case 16: // STATE 17
		;
		((P3 *)this)->done[3] = trpt->bup.ovals[1];
		XX = 1;
		unrecv(((P3 *)this)->ret_right, XX-1, 0, ((int)((P3 *)this)->right), 1);
		((P3 *)this)->right = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 18: // STATE 20
		;
	/* 1 */	((P3 *)this)->val = trpt->bup.ovals[1];
	/* 0 */	((P3 *)this)->right = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 19: // STATE 36
		;
		((P3 *)this)->done[4] = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 24
		;
		now.head = trpt->bup.oval;
		;
		goto R999;

	case 21: // STATE 26
		;
		now.next[ Index(((P3 *)this)->left, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 22: // STATE 36
		;
		((P3 *)this)->done[4] = trpt->bup.ovals[4];
		now.top = trpt->bup.ovals[3];
		now.stack[ Index(now.top, 5) ] = trpt->bup.ovals[2];
		now.next[ Index(((P3 *)this)->right, 5) ] = trpt->bup.ovals[1];
		now.value[ Index(((P3 *)this)->right, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 23: // STATE 39
		;
		now.lock = trpt->bup.oval;
		;
		goto R999;

	case 24: // STATE 44
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC insert */
;
		;
		;
		
	case 26: // STATE 2
		goto R999;
;
		
	case 27: // STATE 7
		goto R999;

	case 28: // STATE 5
		;
		((P2 *)this)->done[1] = trpt->bup.oval;
		;
		goto R999;

	case 29: // STATE 11
		;
		((P2 *)this)->done[2] = trpt->bup.ovals[1];
		now.lock = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 31: // STATE 14
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 32: // STATE 15
		;
		XX = 1;
		unrecv(((P2 *)this)->ret_left, XX-1, 0, ((int)((P2 *)this)->left), 1);
		((P2 *)this)->left = trpt->bup.oval;
		;
		;
		goto R999;

	case 33: // STATE 17
		;
		((P2 *)this)->done[3] = trpt->bup.ovals[1];
		XX = 1;
		unrecv(((P2 *)this)->ret_right, XX-1, 0, ((int)((P2 *)this)->right), 1);
		((P2 *)this)->right = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 35: // STATE 21
		;
		now.lock = trpt->bup.ovals[2];
	/* 1 */	((P2 *)this)->val = trpt->bup.ovals[1];
	/* 0 */	((P2 *)this)->right = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		
	case 36: // STATE 29
		goto R999;

	case 37: // STATE 27
		;
		((P2 *)this)->done[4] = trpt->bup.ovals[3];
		now.value[ Index(((P2 *)this)->curr, 5) ] = trpt->bup.ovals[2];
		((P2 *)this)->curr = trpt->bup.ovals[1];
		now.top = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 38: // STATE 32
		;
		now.next[ Index(((P2 *)this)->curr, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 39: // STATE 40
		;
		now.lock = trpt->bup.ovals[3];
		((P2 *)this)->done[5] = trpt->bup.ovals[2];
		now.head = trpt->bup.ovals[1];
	/* 0 */	((P2 *)this)->left = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 40: // STATE 40
		;
		now.lock = trpt->bup.ovals[2];
		((P2 *)this)->done[5] = trpt->bup.ovals[1];
		now.next[ Index(((P2 *)this)->left, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 41: // STATE 40
		;
		now.lock = trpt->bup.ovals[1];
		((P2 *)this)->done[5] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 42: // STATE 46
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC search */
;
		;
		;
		
	case 44: // STATE 2
		goto R999;
;
		
	case 45: // STATE 7
		goto R999;

	case 46: // STATE 5
		;
		((P1 *)this)->t = trpt->bup.oval;
		;
		goto R999;

	case 47: // STATE 11
		;
		((P1 *)this)->right = trpt->bup.ovals[1];
		((P1 *)this)->left = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 48: // STATE 12
		;
	/* 1 */	((P1 *)this)->val = trpt->bup.ovals[1];
	/* 0 */	((P1 *)this)->t = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 49: // STATE 17
		goto R999;

	case 50: // STATE 15
		;
		((P1 *)this)->t = trpt->bup.oval;
		;
		goto R999;

	case 51: // STATE 22
		;
		_m = unsend(((P1 *)this)->in_left);
		;
		goto R999;

	case 52: // STATE 23
		;
		_m = unsend(((P1 *)this)->in_right);
		;
		goto R999;

	case 53: // STATE 24
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC initlist */

	case 54: // STATE 6
		;
		now.top = trpt->bup.ovals[4];
		((P0 *)this)->curr = trpt->bup.ovals[3];
		now.stack[ Index(now.top, 5) ] = trpt->bup.ovals[2];
		now.next[ Index(((P0 *)this)->curr, 5) ] = trpt->bup.ovals[1];
		now.value[ Index(((P0 *)this)->curr, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 55: // STATE 8
		;
	/* 0 */	((P0 *)this)->curr = trpt->bup.oval;
		;
		;
		goto R999;

	case 56: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;
	}

