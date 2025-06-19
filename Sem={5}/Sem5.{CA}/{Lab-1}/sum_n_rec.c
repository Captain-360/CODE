#include <stdio.h>
void main()
{
    int fact, n;
    printf("enter a number");
    scanf("%d", &n);
    int ans = sum(n);
    printf("%d \n", ans);
}
int sum(int n)
{
    if (n<=0){
        return;
    }
    else
    {
        return n + sum(n - 1);
    }
}
