#include <stdio.h>

void foo(const char *s)
{
    for (int i=0; i<10; ++i)
        printf("%d ",*s++);
    puts("");

}

int main(void)
{
     char str[4] = "FOO";
     foo(str);
}
