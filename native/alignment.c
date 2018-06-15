#include <stdio.h>
#include <stdint.h>

struct myStruct
{
  int32_t B[3];
  int32_t A; 
  int32_t C;
};

void use_struct (struct myStruct *s) {
    printf("sizeof(struct myStruct): %ld\n", sizeof( struct myStruct ));
    printf("sizeof(struct myStruct *): %ld\n", sizeof( struct myStruct *));
    printf("A = %d\n", s->A);
    printf("Sum B = %d\n", s->B[0] + s->B[1] + s->B[2]);
    printf("C = %d\n", s->C);
}
