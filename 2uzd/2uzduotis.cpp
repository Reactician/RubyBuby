#include <iostream>
#include <cmath>

using namespace std;

int main()
{
    double a,b,c;
    cout<<"�veskite tris skai�ius"<<endl;
    cin>>a;
    cin>>b;
    cin>>c;
    if ((a>c)||(b>c)){cout<<"c ma�iausias"<<endl;}
    else if ((b>a)||(c>a)){cout<<"a ma�iausias"<<endl;}
    else if ((a>b)||(c>b)){cout<<"b ma�iausias"<<endl;}
    else if ((a==b)&&(b==c)){cout<<"Visi yra lyg�s"<<endl;}

    return 0;
}
