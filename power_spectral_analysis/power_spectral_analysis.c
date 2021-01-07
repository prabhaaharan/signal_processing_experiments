#include<fastmath67x.h>
#include<math.h>
#include<stdio.h>
#define pi 3.141592654
void main()
{
float *R,*I,*Q,*C,*P,*E;
int i,j,k,l,n,z,N=6;
R=(float *)0x80001000;
I=(float *)0x80001100;
Q=(float *)0x80001200;
C=(float *)0x80001300;
P=(float *)0x80001400;
E=(float *)0x80001500;
for(i=0;i<N;i++)
{
R[i]=0;
I[i]=0;
Q[i]=0;
C[i]=0;
P[i]=0;
E[i]=0;
}
for(j=0;j<N;j++)
{
Q[j]=cos(pi/3*j);
}
for(k=0;k<N;k++)
{
	for(n=0;n<N;n++)
	{
	R[k]=(R[k]+(Q[n]*(cos(2*pi*k*n/N))));
	I[k]=(I[k]+(Q[n]*(-sin(2*pi*k*n/N))));
	}
R[k]=(R[k]/N);
I[k]=(R[k]/N);
}
for(z=0;z<N;z++)
{
C[z]=((R[z]*R[z])+(I[z]*I[z]));
}
for(l=0;l<N;l++)
{
P[0]=P[0]+C[l];
}
E[0]=P[0]/N;
halt:
goto halt;
}