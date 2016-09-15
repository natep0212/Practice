# include <iostream>
using namespace std;

int main()
{
    double one = 0.0;
    double two = 0.0;
    char sign;

    cout << "Enter +, -, *, or / : ";
    cin >> sign;
    cout << "Enter two numbers: ";
    cin >> one >> two;

    switch(sign) {
        case '-':
            cout << one-two;
            break;
        case '+':
            cout << one+two;
            break;
        case '*':
            cout << one*two;
            break;
        case '/':
            cout << one/two;
            break;
        default:
            cout << "Error, use correct sign";
            break;
    }
    return 0;
}
