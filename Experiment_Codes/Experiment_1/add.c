#include "add.h"

int add_result = 0;

int add(int n)
{
    int i;

    for (i = 0; i < n; i++)
    {
        add_result = add_result + i;
    }

    return add_result;
}
