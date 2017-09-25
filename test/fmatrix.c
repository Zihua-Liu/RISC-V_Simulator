#include <stdio.h>
#include <string.h>

double ans[5][5];
double a[5][5] = {{1.2, 2.4, 3.1, 4.6, 5.8}, {2.4, 5.5, 4.5, 3.3, 1.8}, {5.3, 3.6, 2.9, 1.4, 4.8}, {1.1, 4.4, 3.6, 5.2, 2.7}, {3.0, 2.5, 4.1, 5.2, 1.7}};
double b[5][5] = {{2.5, 4.2, 5.2, 3.1, 1.9}, {1.2, 4.6, 3.8, 2.1, 5.3}, {3.0, 4.1, 2.7, 1.2, 5.4}, {5.1, 1.5, 3.6, 4.2, 2.2}, {4.7, 1.8, 2.5, 5.5, 3.0}};

int main(){
	int i, j, k;
	for(int i = 0; i < 5; i++){
		for(int j = 0; j < 5; j++){
			printf("%lf ", a[i][j]);
		}
		printf("\n");
	}
	printf("\n");
	for(int i = 0; i < 5; i++){
		for(int j = 0; j < 5; j++){
			printf("%lf ", b[i][j]);
		}
		printf("\n");
	}
	printf("\n");
	for(i = 0; i < 5; i++){
		for(j = 0; j < 5; j++){
			double tmp = 0;
			for(k = 0; k < 5; k++){
				tmp += a[i][k] * b[k][j];
			}
			ans[i][j] = tmp;
		}
	}
	for(int i = 0; i < 5; i++){
		for(int j = 0; j < 5; j++){
			printf("%lf ", ans[i][j]);
		}
		printf("\n");
	}
	return 0;
}

