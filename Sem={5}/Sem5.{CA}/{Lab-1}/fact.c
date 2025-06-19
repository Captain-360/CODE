#include<stdio.h>
void main(){
    int fact,i,n;
    printf("enter a number");
    scanf("%d",&n);
    for(i=1;i<=n;i++){
        fact*=i;
    }
    print("fact is :",fact);
}