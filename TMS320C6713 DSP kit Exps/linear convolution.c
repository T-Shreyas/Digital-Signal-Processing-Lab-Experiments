/*
* main.c
*/
#include<stdio.h>
int x[20],y[20],h[20];
int main(void) {
int m,n,i,j;
printf("Enter the length of x[n]\n");
scanf("%d",&m);
printf("Enter the elements of x[n]\n");
for(i=0;i<m;i++){
scanf("%d",&x[i]);
}
printf("Enter the length of h[n]\n");
scanf("%d",&n);
printf("Enter the elements of h[n]\n");
for(i=0;i<n;i++){
scanf("%d",&h[i]);
}
/*Making each sequence length m+n-1*/
for(j=m;j<m+n-1;j++)
x[j]=0;
for(j=n;j<m+n-1;j++)
h[j]=0;
for (i = 0; i < m + n - 1; i++)
{
y[i] = 0;
for (j = 0; j <= i; j++)
{
y[i] = y[i] + (x[j]* h[i-j]); // Calculating Linear Convolution
}
}
//displaying the o/p
for (i = 0; i < m + n - 1; i++)
{
printf("y[%d]=%d\n", i, y[i]); // Printing it to STDOUT
}
printf("\n\n");
return 0;
}
