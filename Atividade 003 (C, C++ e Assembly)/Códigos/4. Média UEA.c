#include<stdio.h>
#include<stdlib.h>
#include<locale.h>

int main(){
		
	setlocale(LC_ALL,"Portuguese");

	int p1, p2, pf, med, final=0;

	printf("Informe suas notas de P1 e P2: ");
	scanf("%i %i", &p1, &p2);
	med = (p1+p2)/2;

	if(med >= 8)printf("Aprovado com m�dia %i\n ", med );
	else if(med >= 4){printf("Voc� est� na PF! Sua m�dia � %i\n", med); final = 1;}
	else if(med < 4) printf("Reprovado sem PF com m�dia %i\n ", med);

	if(final){
	printf("Voc� precisa de %i para passar\n", 18 - p1 - p2 );
	printf("Digite sua nota da PF\n");
	scanf("%i",&pf);
	med = (p1+p2+pf)/3;

	if(med >= 6) printf("Aprovado com PF! Sua m�dia � %i\n ", med);
	else printf("Reprovado sem PF com m�dia %i\n ");

}
}
