#include <iostream>
#include <ctime>

int main() {
	int n = 2097152;
	double res = 0;
	std::cout << CLOCKS_PER_SEC << std::endl;
	double begin = (double)clock();
	for(int i = 1; i <= n; i++) {
		res += 1/(double)n;
	}
	double end = (double)clock();
	std::cout << end - begin << std::endl;
	return 0;
}
