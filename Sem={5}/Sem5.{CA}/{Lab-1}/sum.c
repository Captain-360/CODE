#include<stdio.h>
void main(){
    int sum,i,n;
    printf("enter a number");
    scanf("%d",&n);
    for(i=1;i<=n;i++){
        sum+=i;
    }
    printf("sum is : %d",sum);
}
