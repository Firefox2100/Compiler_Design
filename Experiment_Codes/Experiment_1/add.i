# 1 "add.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 32 "<command-line>" 2
# 1 "add.c"
# 1 "add.h" 1



extern int add_result;

int add(int n);
# 2 "add.c" 2

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
