#include<stdio.h>
int x[20],y[20],rxy[20],a[20];
int main(void) {
int m,n,i,j;
printf("Enter the length of x[n]\n");
scanf("%d",&m);
printf("Enter the elements of x[n]\n");
for(i=0;i<m;i++){
scanf("%d",&x[i]);
}
printf("Enter the length of y[n]\n");
scanf("%d",&n);
printf("Enter the elements of y[n]\n");
for(i=0;i<n;i++){
scanf("%d",&y[i]);
}
for(i=0;i<n;i++){
a[i]=y[n-1-i];
}
/making sequence equal length/
if(m!=n){
if(m>n){
for(i=n;i<m;i++)
a[i]=0;
n=m;
}
else{
for(i=m;i<n;i++)
x[i]=0;
m=n;
}
}
for(j=m;j<m+m-1;j++){
x[j]=0;
}
for(j=m;j<m+m-1;j++){
a[j]=0;
}
 for (i = 0; i < m + m - 1; i++)
 {
 rxy[i] = 0;
 for (j = 0; j <= i; j++)
 {
 rxy[i] = rxy[i] + (x[j]* a[i-j]); // Calculating Linear Convolution
 }
 }
 //displaying the o/p
 printf("Cross correlation is:\n");
 for (i = 0; i < m + m - 1; i++)
 {
 printf("rxy[%d]=%d\n", i, rxy[i]); // Printing it to STDOUT
 }
 printf("\n\n");
return 0;
}
