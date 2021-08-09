#include<iostream>
#include<algorithm>
using namespace std;

int main(){
    
    int a, b;
    cout << "Insira o primeiro número: ";
    cin >> a;
    cout << "Insira o segundo número: ";
    cin >> b;

    int result = (a>b) ? a : b;
    cout << "O maior número é: " << result << endl;
    return 0;
}