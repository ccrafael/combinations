#include <iostream>
#include <vector>
#include "combinations.h"

using namespace std;

int main(int argc, char ** argv) {
    
    int t, n;

    cout << "n = ";
    cin >> n;
    vector<char> arr(n);
    cout << n << " chars) ";
    for (int i = 0; i < n; ++i){
        cin >> arr[i];
    }

    cout << "t = ";
    cin >> t;

    Combinations<char> combs(arr, t);
    
    while (combs.has_next()) {
			vector<char> comb = combs.next();
			string s(comb.begin(), comb.end());
			cout << s  << endl;
		}
    

    return 0;
}
