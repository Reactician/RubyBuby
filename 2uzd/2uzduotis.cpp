#include <iostream>
#include <cmath>

using namespace std;

int main()
{
    double a,b,c;
    cout<<"Áveskite tris skaièius"<<endl;
    cin>>a;
    cin>>b;
    cin>>c;
    if ((a>c)||(b>c)){cout<<"c maþiausias"<<endl;}
    else if ((b>a)||(c>a)){cout<<"a maþiausias"<<endl;}
    else if ((a>b)||(c>b)){cout<<"b maþiausias"<<endl;}
    else if ((a==b)&&(b==c)){cout<<"Visi yra lygûs"<<endl;}

    return 0;
}
