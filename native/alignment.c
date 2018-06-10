#include <stdio.h>
#include <stdint.h>

struct myStruct
{
    int32_t A; 
    int32_t B[3];
    int32_t C;
};

void use_struct (struct myStruct *s) {
    printf("sizeof(struct myStruct): %ld\n", sizeof( struct myStruct ));
    printf("sizeof(struct myStruct *): %ld\n", sizeof( struct myStruct *));
    printf("A = %d\n", s->A);
    printf("B[0] = %d\n", s->B[0]);
    printf("B[1] = %d\n", s->B[1]);
    printf("B[2] = %d\n", s->B[2]);
    printf("C = %d\n", s->C);
}
