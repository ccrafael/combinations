#include <vector>
#include <iostream>
#include <stdexcept>

#ifndef combinations_h
#define combinations_h

using namespace std;


template <class T>
class Combinations {
	int combination_len;
	int j;
	vector<T> arr;
	vector<int> c;
	
public:
	
	Combinations(vector<T>& arr, int combination_len) {
		  if (combination_len <= 0) {
				throw std::invalid_argument("combination len can not be <= 0");
			}
				
			this->combination_len = combination_len;
			this->arr = arr;
			
			this->c = vector<int>(combination_len + 2);
			int n = arr.size();

			for (int j = 1; j <= combination_len; ++j) {
					c[j] = j - 1;
			}
			c[combination_len + 1] = n;
		
			this->j = 0;
	}
	
	bool has_next() {
		return this->j == 0 || j <= combination_len;
	}
	
	vector<T> visit(vector<int> indices) {
		vector<T> current;
    for (int i = 1; i < indices.size() - 1; ++i) {
        current.push_back(arr[indices[i]]);
    }
    return current;
	};

	vector<T> next() {
		  if (!has_next()) {
				throw std::logic_error ("no more values");
			}
			vector<T> current = visit(c);
					
			j = 1;
			while (c[j] + 1 == c[j + 1]) {
					c[j] = j - 1;
					j ++;
			}

			if (j <= combination_len) {
				c[j] = c[j] + 1;
			}
			
			return current;
	}
	
};
	
#endif
