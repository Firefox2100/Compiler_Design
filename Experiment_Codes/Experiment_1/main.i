# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 32 "<command-line>" 2
# 1 "main.c"
# 1 "add.h" 1



extern int add_result;

int add(int n);
# 2 "main.c" 2
# 1 "multiply.h" 1



extern int result;

int multiply(int n);
# 3 "main.c" 2

int main()
{
    int i = 0;

    add(100);

    while (i < 100)
    {
        result = multiply(i);
        i++;
    }

    return 0;
}
