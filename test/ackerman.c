#include <stdio.h>

int ackerman(int x, int y){
	if(x == 0)  
		return y + 1;  
	else if(y == 0)  
		return ackerman(x - 1, 1);  
	else  
		return ackerman(x - 1, ackerman(x, y - 1)); 
}

int main(){
	int result = ackerman(3, 7);
	printf("%d\n", result);
}