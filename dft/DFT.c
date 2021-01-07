    #include<fastmath67x.h>
#include<math.h>
#include<stdio.h>
#define pi 3.14
void main()
{
float *x;
int N=8;
float *Re,*Im;
double re,im;
int n,k,z;
x=(float *)0x80001000;
Re=(float *)0x80001100;
Im=(float *)0x80002000;
for(z=0;z<N;z++)
{
Re[z]=0;
Im[z]=0;
}
for(k=0;k<N;k++)
{
	for(n=0;n<N;n++)
	{
	re=cos((2*pi*n*k)/N);
	im=sin((2*pi*n*k)/N);
	Re[k]=Re[k]+(x[n]*(re));
	Im[k]=Im[k]-(x[n]*(im));
	}
}
halt:
goto halt;
}

