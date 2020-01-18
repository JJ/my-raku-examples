#include <stdio.h>

void set_foo ( const char *foo) {
  printf("Printed directly %s\n", foo);
  for (int i=0; i<5; ++i)
    printf("%d ",*foo++);
}
