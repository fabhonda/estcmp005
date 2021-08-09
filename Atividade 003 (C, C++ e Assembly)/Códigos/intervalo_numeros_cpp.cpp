#include<bits/stdc++.h>

using namespace std;

int main(){
    int n1, n2;
    cout << "Insira o numero 1: ";
    cin >> n1;
    cout << "Insira o numero 2: ";
    cin >> n2;
    for(int i = (n1+1); i < n2; i++){
        cout << i << " ";
    }
    cout << endl;
    return 0;
}