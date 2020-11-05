#include <stdio.h>

struct TS {
  long ot;
  long one;
};

int show2( struct TS ts[2] ) {
  printf( "show2: (1)  %ld %ld  (2) %ld %ld\n",
       ts[0].ot, ts[0].one, ts[1].ot, ts[1].one);
  return 0;
}
