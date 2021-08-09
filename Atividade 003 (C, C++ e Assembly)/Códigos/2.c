
#include <stdio.h>
int main(){
    
    int a, b;

    printf("Insira o primeiro número: ");
    scanf("%d", &a);
    printf("Insira o segundo número: ");
    scanf("%d", &b);

    int result = (a > b) ? a : b;
    printf("O maior número é: %d\n", result);

    return 0;
}