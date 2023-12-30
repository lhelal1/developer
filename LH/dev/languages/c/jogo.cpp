#include <iostream>
using namespace std;
int main (){ 

    int numero_secreto = 42; 
    cout << "Seu número secreto é: " << numero_secreto << endl;
    int chute;
    cout << "Qual seu chute?";
    cin >> chute;
    cout << "O valor do seu chute é:" << chute << endl;

    if (chute == numero_secreto) {
        cout << "Parabéns!" << endl;
    }

    else if (chute > numero_secreto) {
        cout <<"Seu chute foi maior" << endl;
    }

    else {
        cout << "Seu chute foi menor" << endl; 
    }

}