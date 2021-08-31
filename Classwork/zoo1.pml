/* Ben Rose
I pledge my honor that I have abided by the Stevens Honor System.
12/18/2020

CS 511 Endterm
Zoo1 */

byte mice = 0;
byte felines = 0;
byte mutexMice = 1;
byte mutexFelines =1;
byte feedinglot = 2;
byte mutex = 1;

inline acquire(sem) {
  atomic {
    sem>0;
    sem--
  }
}

inline release(sem) {
 sem++
}

active [3] proctype Mouse() {
  acquire(mutex);
  acquire(mutexMice);
  mice++;
  if
  :: mice==1 -> acquire(mutexFelines);
    :: else -> skip;
  fi
  release(mutexMice);
  release(mutex);

  acquire(feedinglot);
  // access feeding lot
  assert(felines == 0);

  /* // For problem 2, comment out to produce results for problem 1
  assert(mice < 3);
  // end stuff for problem 2 */

  release (feedinglot);

  acquire(mutexMice);
  mice--;
  if
    :: mice==0 -> release(mutexFelines);
    :: else -> skip;
  fi
  release(mutexMice);
}

active [3] proctype Feline() {
  acquire(mutex);
  acquire(mutexFelines);
  felines++;
  if
    :: felines==1 -> acquire(mutexMice);
    :: else -> skip;
  fi
  release(mutexFelines);
  release(mutex);

  acquire(feedinglot);
  // access feeding lot
  assert(mice == 0);

  /* // For problem 2, comment out to produce results for problem 1
  assert(felines < 3);
  // end stuff for problem 2 */

  release(feedinglot);

  acquire(mutexFelines);
  felines--;
  if
    :: felines==0 -> release(mutexMice);
    :: else -> skip;
  fi
  release(mutexFelines);

}
