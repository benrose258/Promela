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

		 /* PROC Feline */
	case 3: // STATE 1 - zoo2.pml:17 - [((mutex>0))] (8:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!((((int)now.mutex)>0)))
			continue;
		/* merge: mutex = (mutex-1)(0, 2, 8) */
		reached[1][2] = 1;
		(trpt+1)->bup.oval = ((int)now.mutex);
		now.mutex = (((int)now.mutex)-1);
#ifdef VAR_RANGES
		logval("mutex", ((int)now.mutex));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 4: // STATE 5 - zoo2.pml:17 - [((mutexFelines>0))] (9:0:1 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		if (!((((int)now.mutexFelines)>0)))
			continue;
		/* merge: mutexFelines = (mutexFelines-1)(0, 6, 9) */
		reached[1][6] = 1;
		(trpt+1)->bup.oval = ((int)now.mutexFelines);
		now.mutexFelines = (((int)now.mutexFelines)-1);
#ifdef VAR_RANGES
		logval("mutexFelines", ((int)now.mutexFelines));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 5: // STATE 9 - zoo2.pml:61 - [felines = (felines+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		(trpt+1)->bup.oval = ((int)now.felines);
		now.felines = (((int)now.felines)+1);
#ifdef VAR_RANGES
		logval("felines", ((int)now.felines));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 10 - zoo2.pml:63 - [((felines==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		if (!((((int)now.felines)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 11 - zoo2.pml:17 - [((mutexMice>0))] (20:0:1 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		if (!((((int)now.mutexMice)>0)))
			continue;
		/* merge: mutexMice = (mutexMice-1)(0, 12, 20) */
		reached[1][12] = 1;
		(trpt+1)->bup.oval = ((int)now.mutexMice);
		now.mutexMice = (((int)now.mutexMice)-1);
#ifdef VAR_RANGES
		logval("mutexMice", ((int)now.mutexMice));
#endif
		;
		/* merge: .(goto)(0, 18, 20) */
		reached[1][18] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 8: // STATE 19 - zoo2.pml:23 - [mutexFelines = (mutexFelines+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][19] = 1;
		(trpt+1)->bup.oval = ((int)now.mutexFelines);
		now.mutexFelines = (((int)now.mutexFelines)+1);
#ifdef VAR_RANGES
		logval("mutexFelines", ((int)now.mutexFelines));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 21 - zoo2.pml:23 - [mutex = (mutex+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][21] = 1;
		(trpt+1)->bup.oval = ((int)now.mutex);
		now.mutex = (((int)now.mutex)+1);
#ifdef VAR_RANGES
		logval("mutex", ((int)now.mutex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 23 - zoo2.pml:17 - [((feedinglot>0))] (27:0:1 - 1)
		IfNotBlocked
		reached[1][23] = 1;
		if (!((((int)now.feedinglot)>0)))
			continue;
		/* merge: feedinglot = (feedinglot-1)(0, 24, 27) */
		reached[1][24] = 1;
		(trpt+1)->bup.oval = ((int)now.feedinglot);
		now.feedinglot = (((int)now.feedinglot)-1);
#ifdef VAR_RANGES
		logval("feedinglot", ((int)now.feedinglot));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 11: // STATE 27 - zoo2.pml:71 - [assert((mice==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][27] = 1;
		spin_assert((((int)now.mice)==0), "(mice==0)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 28 - zoo2.pml:74 - [assert((feedinglot<3))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][28] = 1;
		spin_assert((((int)now.feedinglot)<3), "(feedinglot<3)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 29 - zoo2.pml:23 - [feedinglot = (feedinglot+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][29] = 1;
		(trpt+1)->bup.oval = ((int)now.feedinglot);
		now.feedinglot = (((int)now.feedinglot)+1);
#ifdef VAR_RANGES
		logval("feedinglot", ((int)now.feedinglot));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 31 - zoo2.pml:17 - [((mutexFelines>0))] (35:0:1 - 1)
		IfNotBlocked
		reached[1][31] = 1;
		if (!((((int)now.mutexFelines)>0)))
			continue;
		/* merge: mutexFelines = (mutexFelines-1)(0, 32, 35) */
		reached[1][32] = 1;
		(trpt+1)->bup.oval = ((int)now.mutexFelines);
		now.mutexFelines = (((int)now.mutexFelines)-1);
#ifdef VAR_RANGES
		logval("mutexFelines", ((int)now.mutexFelines));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 15: // STATE 35 - zoo2.pml:79 - [felines = (felines-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][35] = 1;
		(trpt+1)->bup.oval = ((int)now.felines);
		now.felines = (((int)now.felines)-1);
#ifdef VAR_RANGES
		logval("felines", ((int)now.felines));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 36 - zoo2.pml:81 - [((felines==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][36] = 1;
		if (!((((int)now.felines)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 37 - zoo2.pml:23 - [mutexMice = (mutexMice+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][37] = 1;
		(trpt+1)->bup.oval = ((int)now.mutexMice);
		now.mutexMice = (((int)now.mutexMice)+1);
#ifdef VAR_RANGES
		logval("mutexMice", ((int)now.mutexMice));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 43 - zoo2.pml:23 - [mutexFelines = (mutexFelines+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][43] = 1;
		(trpt+1)->bup.oval = ((int)now.mutexFelines);
		now.mutexFelines = (((int)now.mutexFelines)+1);
#ifdef VAR_RANGES
		logval("mutexFelines", ((int)now.mutexFelines));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 45 - zoo2.pml:86 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][45] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Mouse */
	case 20: // STATE 1 - zoo2.pml:17 - [((mutex>0))] (8:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((int)now.mutex)>0)))
			continue;
		/* merge: mutex = (mutex-1)(0, 2, 8) */
		reached[0][2] = 1;
		(trpt+1)->bup.oval = ((int)now.mutex);
		now.mutex = (((int)now.mutex)-1);
#ifdef VAR_RANGES
		logval("mutex", ((int)now.mutex));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 21: // STATE 5 - zoo2.pml:17 - [((mutexMice>0))] (9:0:1 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		if (!((((int)now.mutexMice)>0)))
			continue;
		/* merge: mutexMice = (mutexMice-1)(0, 6, 9) */
		reached[0][6] = 1;
		(trpt+1)->bup.oval = ((int)now.mutexMice);
		now.mutexMice = (((int)now.mutexMice)-1);
#ifdef VAR_RANGES
		logval("mutexMice", ((int)now.mutexMice));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 22: // STATE 9 - zoo2.pml:29 - [mice = (mice+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		(trpt+1)->bup.oval = ((int)now.mice);
		now.mice = (((int)now.mice)+1);
#ifdef VAR_RANGES
		logval("mice", ((int)now.mice));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 10 - zoo2.pml:31 - [((mice==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		if (!((((int)now.mice)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 11 - zoo2.pml:17 - [((mutexFelines>0))] (20:0:1 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		if (!((((int)now.mutexFelines)>0)))
			continue;
		/* merge: mutexFelines = (mutexFelines-1)(0, 12, 20) */
		reached[0][12] = 1;
		(trpt+1)->bup.oval = ((int)now.mutexFelines);
		now.mutexFelines = (((int)now.mutexFelines)-1);
#ifdef VAR_RANGES
		logval("mutexFelines", ((int)now.mutexFelines));
#endif
		;
		/* merge: .(goto)(0, 18, 20) */
		reached[0][18] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 25: // STATE 19 - zoo2.pml:23 - [mutexMice = (mutexMice+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		(trpt+1)->bup.oval = ((int)now.mutexMice);
		now.mutexMice = (((int)now.mutexMice)+1);
#ifdef VAR_RANGES
		logval("mutexMice", ((int)now.mutexMice));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 21 - zoo2.pml:23 - [mutex = (mutex+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][21] = 1;
		(trpt+1)->bup.oval = ((int)now.mutex);
		now.mutex = (((int)now.mutex)+1);
#ifdef VAR_RANGES
		logval("mutex", ((int)now.mutex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 23 - zoo2.pml:17 - [((feedinglot>0))] (27:0:1 - 1)
		IfNotBlocked
		reached[0][23] = 1;
		if (!((((int)now.feedinglot)>0)))
			continue;
		/* merge: feedinglot = (feedinglot-1)(0, 24, 27) */
		reached[0][24] = 1;
		(trpt+1)->bup.oval = ((int)now.feedinglot);
		now.feedinglot = (((int)now.feedinglot)-1);
#ifdef VAR_RANGES
		logval("feedinglot", ((int)now.feedinglot));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 28: // STATE 27 - zoo2.pml:39 - [assert((felines==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][27] = 1;
		spin_assert((((int)now.felines)==0), "(felines==0)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 28 - zoo2.pml:42 - [assert((feedinglot<3))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][28] = 1;
		spin_assert((((int)now.feedinglot)<3), "(feedinglot<3)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 29 - zoo2.pml:45 - [assert((feedinglot>-(1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][29] = 1;
		spin_assert((((int)now.feedinglot)> -(1)), "(feedinglot> -(1))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 30 - zoo2.pml:23 - [feedinglot = (feedinglot+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][30] = 1;
		(trpt+1)->bup.oval = ((int)now.feedinglot);
		now.feedinglot = (((int)now.feedinglot)+1);
#ifdef VAR_RANGES
		logval("feedinglot", ((int)now.feedinglot));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 32 - zoo2.pml:17 - [((mutexMice>0))] (36:0:1 - 1)
		IfNotBlocked
		reached[0][32] = 1;
		if (!((((int)now.mutexMice)>0)))
			continue;
		/* merge: mutexMice = (mutexMice-1)(0, 33, 36) */
		reached[0][33] = 1;
		(trpt+1)->bup.oval = ((int)now.mutexMice);
		now.mutexMice = (((int)now.mutexMice)-1);
#ifdef VAR_RANGES
		logval("mutexMice", ((int)now.mutexMice));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 33: // STATE 36 - zoo2.pml:50 - [mice = (mice-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][36] = 1;
		(trpt+1)->bup.oval = ((int)now.mice);
		now.mice = (((int)now.mice)-1);
#ifdef VAR_RANGES
		logval("mice", ((int)now.mice));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 37 - zoo2.pml:52 - [((mice==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		if (!((((int)now.mice)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 38 - zoo2.pml:23 - [mutexFelines = (mutexFelines+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][38] = 1;
		(trpt+1)->bup.oval = ((int)now.mutexFelines);
		now.mutexFelines = (((int)now.mutexFelines)+1);
#ifdef VAR_RANGES
		logval("mutexFelines", ((int)now.mutexFelines));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 44 - zoo2.pml:23 - [mutexMice = (mutexMice+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][44] = 1;
		(trpt+1)->bup.oval = ((int)now.mutexMice);
		now.mutexMice = (((int)now.mutexMice)+1);
#ifdef VAR_RANGES
		logval("mutexMice", ((int)now.mutexMice));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 46 - zoo2.pml:56 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][46] = 1;
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

