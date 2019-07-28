#include <stdio.h>
#include <vector>
#include <list>
#include <map>
#include <set>
#include <deque>
#include <stack>
#include <bitset>
#include <algorithm>
#include <functional>
#include <numeric>
#include <utility>
#include <sstream>
#include <iostream>
#include <iomanip>
#include <cstdio>
#include <cmath>
#include <cstdlib>
#include <ctime>

typedef long long ll;
ll mo = 1000000007;

ll modpow(ll a, ll n = mo - 2) {
	ll r = 1;
	a %= mo;
	while (n) {
		r = r * ((n & 1) ? a : 1) % mo;
		a = a * a % mo;
		n >>= 1;
	}
	return r;
}

using namespace std;

class SampleClass {
public:
	void sampleMethod() {
		
	}
}

int main(int argc, char **argv) {
	return 0;
}}
