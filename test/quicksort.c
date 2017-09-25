#include <stdio.h>

int num[20] = {3, 10, 7, 11, 19, 20, 1, 8, 6, 15, 2, 14, 4, 5, 12, 18, 9, 13, 16, 17};

void quicksort(int* a, int left, int right){
	if(left > right)
		return;
	int pivot = (left + right) / 2;
	int pivot_num = a[pivot];
	a[pivot] = a[right];
	int l = left, r = right;
	while(l != r){
		while(l < r && a[l] <= pivot_num)
			l++;
		if(l < r){
			a[r] = a[l];
			r--;
		}
		while(l < r && a[r] >= pivot_num)
			r--;
		if(l < r){
			a[l] = a[r];
			l++;
		}
	}
	a[l] = pivot_num;
	quicksort(a, left, l - 1);
	quicksort(a, l + 1, right);
	return;
}

int main(){
	quicksort(num, 0, 19);
	int i;
	for(i = 0; i < 20; i++)
		printf("%d ", num[i]);
	printf("\n");
	return 0;
}