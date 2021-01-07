#include<fastmath67x.h>
#include<math.h>
void main()
{
int *xn,*hn,*y,*xnlength,*hnlength,*output;
int b,i,k,l,n,m,z;
xn=(int *)0x80001000;
hn=(int *)0x80001100;
xnlength=(int *)0x80001200;
hnlength=(int *)0x80001204;
output=(int *)0x80002000;
l=*xnlength;
m=*hnlength;
for(i=0;i<(l+m-1);i++)
{output[i]=0;
xn[l+i]=0;
hn[m+i]=0;
}
for(n=0;n<l+m-1;n++)
{for(k=0;k<=n;k++)
{output[n]=output[n]+(xn[k]*hn[n-k]);}
}
halt:
goto halt;
}