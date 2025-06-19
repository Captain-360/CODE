#include <stdio.h>
void main()
{
    int n,i;
    printf("enter a number");
    scanf("%d", &n);
    number(n);
}
int number(int n)
{
    if (n == 0)
    {
        return;
    }
    number(n - 1);
    printf("%d\n", n);
}
