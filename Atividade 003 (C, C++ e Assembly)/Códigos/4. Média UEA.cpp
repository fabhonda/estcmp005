#include<bits/stdc++.h>
using namespace std;

int main(){
		
	setlocale(LC_ALL,"Portuguese");

	int p1, p2, pf, med;
	bool final = false;

	cout << "Informe suas notas de P1 e P2: ";
	cin >> p1 >> p2;
	med = (p1+p2)/2;

	if(med >= 8) cout << "Aprovado com média " << med << endl;
	else if(med >= 4){cout << "Você está na PF! Sua média é " << med << endl; final = true;}
	else if(med < 4) cout << "Reprovado sem PF com média " << med << endl;

	if(final){
	cout << "Você precisa de " << 18 - p1 - p2 << " para passar" << endl;
	cout << "Digite sua nota da PF" << endl;
	cin >> pf;
	med = (p1+p2+pf)/3;

	if(med >= 6) cout << "Aprovado com PF! Sua média é " << med << endl;
	else cout << "Reprovado sem PF com média " << med << endl;

}
}
