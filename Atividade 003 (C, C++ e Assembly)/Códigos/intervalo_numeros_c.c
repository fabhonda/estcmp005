#include<stdio.h>

int main(){
    int n1, n2;
    printf("Insira o numero 1: ");
    scanf("%d", &n1);
    printf("Insira o numero 2: ");
    scanf("%d", &n2);
    for(int i = (n1+1); i < n2; i++){
        printf("%d ", i);
    }
    printf("\n");
    return 0;
}