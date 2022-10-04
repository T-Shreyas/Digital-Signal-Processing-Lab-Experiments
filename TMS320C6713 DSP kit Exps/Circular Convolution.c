#include<math.h>
#include<stdio.h>
int x[20],y[20],h[20],a[20],x2[30];
int main(void) {
int m,n,i,j,k;
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
if (m!=n){
if(m>n){
for(i=n;i<m;i++)
h[i]=0;
m=n;
}
else{
for(i=m;i<n;i++)
x[i]=0;
m=n;
}
}
y[0]=0;
a[0]=h[0];
/*folding h(n) to h(-n)*/
for(j=1;j<n;j++)
a[j]=h[n-j];
/*Circular convolution*/
for(i=0;i<n;i++)
y[0]+=x[i]*a[i];
for(k=1;k<n;k++)
{
y[k]=0;
/*circular shift*/
for(j=1;j<n;j++)
x2[j]=a[j-1];
x2[0]=a[n-1];
for(i=0;i<n;i++)
{
a[i]=x2[i];
y[k]+=x[i]*x2[i];
}
}
/*displaying the result*/
printf("Circular convolution is\n");
 for (i=0;i<n;i++)
 printf(“%d\t”,y[i]);
 return 0;
}
