#include <stdio.h>
#include <string.h>

int ans[5][5];
int a[5][5] = {{1, 2, 3, 4, 5},{2, 5, 4, 3, 1}, {5, 3, 2, 1, 4}, {1, 4, 3, 5, 2}, {3, 2, 4, 5, 1}};
int b[5][5] = {{2, 4, 5, 3, 1}, {1, 4, 3, 2, 5}, {3, 4, 2, 1, 5}, {5, 1, 3, 4, 2}, {4, 1, 2, 5, 3}};

int main(){
	int i, j, k;
	for(int i = 0; i < 5; i++){
		for(int j = 0; j < 5; j++){
			printf("%d ", a[i][j]);
		}
		printf("\n");
	}
	printf("\n");
	for(int i = 0; i < 5; i++){
		for(int j = 0; j < 5; j++){
			printf("%d ", b[i][j]);
		}
		printf("\n");
	}
	printf("\n");
	for(i = 0; i < 5; i++){
		for(j = 0; j < 5; j++){
			int tmp = 0;
			for(k = 0; k < 5; k++){
				tmp += a[i][k] * b[k][j];
			}
			ans[i][j] = tmp;
		}
	}
	for(int i = 0; i < 5; i++){
		for(int j = 0; j < 5; j++){
			printf("%d ", ans[i][j]);
		}
		printf("\n");
	}
	return 0;
}

