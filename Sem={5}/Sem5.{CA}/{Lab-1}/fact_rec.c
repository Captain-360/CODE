#include <stdio.h>
void main()
{
    int fact, n;
    printf("enter a number");
    scanf("%d", &n);
    printf("fact is :", fact);
    int ans = factorial(n);
    printf("%d \n", ans);
}
int factorial(int n)
{
    if (n == 0 || n == 1)
    {
        return 1;
    }
    else
    {
        return n * factorial(n - 1);
    }
}
