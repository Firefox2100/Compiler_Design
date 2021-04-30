# 1 "multiply.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 32 "<command-line>" 2
# 1 "multiply.c"
# 1 "multiply.h" 1



extern int result;

int multiply(int n);
# 2 "multiply.c" 2

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
