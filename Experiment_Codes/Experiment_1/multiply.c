#include "multiply.h"

int result;

int multiply(int n)
{
    static int multiply_result;

    multiply_result = multiply_result * n;

    if (multiply_result > 100000 || n == 0)
    {
        multiply_result = 1;
        return -1;
    }
    else
        return multiply_result;
}
