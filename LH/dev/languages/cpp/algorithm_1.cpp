#include <iostream>
#include <valarray>
#include <cmath>

using namespace std;
#define pi 3.14169

int main()
{
    int a, b, c,x1,x2,disc,real,imag;
    cout << "Please give me a, b and c: ";
    cin >> a >> b >> c;
    disc = b*b - 4*a*c;

    if (disc > 0) {
        x1 = (-b + sqrt(disc) / (2*a));
        x2 = (-b - sqrt(disc) / (2*a));
        cout << "There are two roots - x1 and x2 - for your quadratic equation." << endl;
        cout << "x1 = " << x1 << endl;
        cout << "x2 = " << x2 << endl;
    }

    else if (disc == 0) {
        cout << "You have two roots but they are not different." << endl;
        x1 = -b/(2*a);
        cout << "x1 = x2 =" << x1 << endl;
    }

    else {
        real = -b/(2*a);
        imag = sqrt(-disc)/(2*a);
        cout << "Roots are in the complex set and plane." << endl;
        cout << "x1 = " << real << "+" << imag << "i" << endl;
        cout << "x2 = " << real << "-" << imag << "i" << endl;
    }

    return 0;
}