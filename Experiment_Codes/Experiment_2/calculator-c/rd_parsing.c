#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include "calculator_lex.h"
#include "calculator_yacc.h"
#include "expr.h"

struct node
{
    int type;
    double value;
};

double exp(void);
double term(void);
double factor(void);

struct node token[100];
int m, n;
int flag_real;


int main(int argc, char *argv[])
{
    double result;
    int i = 0;
    n = 0;
    m = 0;
    token[m].type=1;
    yyin = stdin;
    if (argc > 1)
    {
        if ((yyin = fopen(argv[1], "r")) == NULL)
        {
            printf("Can't open file %s\n", argv[1]);
            return -1;
        }
    }
    while (token[m].type)
    {
        n = 0;
        m = 0;

        flag_real = 0;

        while ((token[n].type = yylex()) != 10 && token[n].type != 0)
        {
            token[n].value = yylval.number;
            n++;
        }

        result = exp();

        for (i = 0; i <= n; i++)
        {
            if (token[i].type == FLOATN)
                flag_real = 1;
        }

        if (flag_real)
        {
            printf("=%f\n", result);
        }
        else
        {
            printf("=%d\n", (int)result);
        }
    }

    return 0;
}
double exp()
{
    double temp = term();
    while (token[m].type == '+' || token[m].type == '-')
    {
        switch (token[m].type)
        {
        case '+':
            m++;
            temp += term();
            break;
        case '-':
            m++;
            temp -= term();
            break;
        }
    }
    return temp;
}
double term()
{
    double temp = factor();
    while (token[m].type == '*' || token[m].type == '/')
    {
        switch (token[m].type)
        {
        case '*':
            m++;
            temp *= factor();
            break;
        case '/':
            m++;
            temp /= factor();
            break;
        }
    }
    return temp;
}
double factor()
{
    double temp;
    if (token[m].type == 258 || token[m].type == 259)
    {
        temp = token[m].value;
        m++;
    }
    else if (token[m].type == '(')
    {
        m++;
        temp = exp();
        if(token[m].type==')')
        {
            m++;
        }
    }
    return temp;
}
