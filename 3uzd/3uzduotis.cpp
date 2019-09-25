#include <iostream>
#include <cmath>

using namespace std;

int main()
{
    double a,b,c,s,p;
    cout<<"Įveskite tris trikampio kraštines ir sužinosite:"<<endl;
    cout<<"`Ar jis egzistuoja"<< endl;
    cout<<"`Tipą"<<endl;
    cout<<"`Plotą"<<endl;
    cin>>a;
    cin>>b;
    cin>>c;
    if (a+b>c && a+c>b && b+c>a){
            {cout<<"Trikampis egzistuoja"<<endl;}
        if (a==b && b==c){cout<<"Jis yra lygiakraštis"<<endl;}
        else if((a==b && b!=c)||(a==c && c!=b)||(b==c&& c!=a)){cout<<"Jis yra lygiašonis"<<endl;}
        else if (a!=b!=c){cout<<"jis yra įvairiakraštis"<<endl;}
        p=(a+b+c)/2; // pusperimetris
        s=sqrt(p*(p-a)*(p-b)*(p-c)); // plotas
        cout<<"Trikampio plotas yra:"<<s<<endl;
        }
        else {cout<<"Trikampis neegzistuoja"<<endl;}

    return 0;
}
