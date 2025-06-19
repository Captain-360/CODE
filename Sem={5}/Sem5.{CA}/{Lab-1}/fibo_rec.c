#include <stdio.h>
void main()
{
    int fact, n, i;
    printf("enter a number");
    scanf("%d", &n);
    for (i = 0; i <= n; i++)
    {
        printf("%d \t",fibo(i));
    }
}
int fibo(int n)
{
    if (n == 0)
    {
        return 0;
    }
    else if (n == 1)
    {
        return 1;
    }
    else
    {
        return fibo(n - 1) + fibo(n - 2);
    }
}
