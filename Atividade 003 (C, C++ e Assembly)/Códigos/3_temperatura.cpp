// Faça um Programa que peça a temperatura em graus Fahrenheit, transforme e mostre a temperatura
// em graus Celsius. C = 5 * ((F-32) / 9).

#include <bits/stdc++.h>
using namespace std;

int main()
{
  int f, c;

  cout << "Insira temperatura em graus Fahrenheit:"
       << "\n";

  cin >> f;

  c = 5 * ((f - 32) / 9);

  cout << "A temperatura " << f << " em graus Fahrenheit representa " << c << " em graus Celsius.";
  return 0;
}