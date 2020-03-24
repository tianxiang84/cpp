#include <stdio.h>
#include "../../include/toyDllWindows.hh"

int main(void)
{
        hello("World");
        printf("%d\n", Double(333));
        CppFunc();

        MyClass a;
        a.func();

        return 0;
}