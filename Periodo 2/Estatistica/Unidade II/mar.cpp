#include <bits/stdc++.h>
//sudo g++ -o main mar.cpp
// ./main
using namespace std;

int main()
{
    double media, sum = 0, sumDP = 0, n, aux;
    vector<int> entrada;
    cin >> n;
    for (int i = 0; i < n; i ++){
        cin >> aux;
        entrada.push_back(aux);
        sum += aux;
    }
    media = sum/n;
    cout << "Media amostral: " << media << endl;
    
    for (int i = 0; i < n; i ++){
        sumDP += (entrada[i]-media)*(entrada[i]-media);
    }
    cout << "Dp amostral: " << sqrt(sumDP/n-1) << endl;
    cout << "Dp populacional: " << sqrt(sumDP/n) << endl;
    
    return 0;
}