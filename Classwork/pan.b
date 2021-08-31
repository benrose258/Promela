	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC Feline */

	case 3: // STATE 2
		;
		now.mutex = trpt->bup.oval;
		;
		goto R999;

	case 4: // STATE 6
		;
		now.mutexFelines = trpt->bup.oval;
		;
		goto R999;

	case 5: // STATE 9
		;
		now.felines = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 7: // STATE 12
		;
		now.mutexMice = trpt->bup.oval;
		;
		goto R999;

	case 8: // STATE 19
		;
		now.mutexFelines = trpt->bup.oval;
		;
		goto R999;

	case 9: // STATE 21
		;
		now.mutex = trpt->bup.oval;
		;
		goto R999;

	case 10: // STATE 24
		;
		now.feedinglot = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 13: // STATE 29
		;
		now.feedinglot = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 32
		;
		now.mutexFelines = trpt->bup.oval;
		;
		goto R999;

	case 15: // STATE 35
		;
		now.felines = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 17: // STATE 37
		;
		now.mutexMice = trpt->bup.oval;
		;
		goto R999;

	case 18: // STATE 43
		;
		now.mutexFelines = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 45
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Mouse */

	case 20: // STATE 2
		;
		now.mutex = trpt->bup.oval;
		;
		goto R999;

	case 21: // STATE 6
		;
		now.mutexMice = trpt->bup.oval;
		;
		goto R999;

	case 22: // STATE 9
		;
		now.mice = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 24: // STATE 12
		;
		now.mutexFelines = trpt->bup.oval;
		;
		goto R999;

	case 25: // STATE 19
		;
		now.mutexMice = trpt->bup.oval;
		;
		goto R999;

	case 26: // STATE 21
		;
		now.mutex = trpt->bup.oval;
		;
		goto R999;

	case 27: // STATE 24
		;
		now.feedinglot = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 31: // STATE 30
		;
		now.feedinglot = trpt->bup.oval;
		;
		goto R999;

	case 32: // STATE 33
		;
		now.mutexMice = trpt->bup.oval;
		;
		goto R999;

	case 33: // STATE 36
		;
		now.mice = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 35: // STATE 38
		;
		now.mutexFelines = trpt->bup.oval;
		;
		goto R999;

	case 36: // STATE 44
		;
		now.mutexMice = trpt->bup.oval;
		;
		goto R999;

	case 37: // STATE 46
		;
		p_restor(II);
		;
		;
		goto R999;
	}

