#include <stdint.h>
#include <string.h>

typedef struct a_string_and_an_int32_t_ {
  char *a_string;
  int32_t an_int32;
} a_string_and_an_int32_t;
 

// Here's the structure. Notice how we've got a char * there.

void init_struct(a_string_and_an_int32_t *target, char *str, int32_t int32) {
  target->an_int32 = int32;
  target->a_string = strdup(str);
 
  return;
}
