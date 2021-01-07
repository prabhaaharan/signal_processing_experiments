#include<fastmath67x.h>
#include<math.h>
void main()
{
int *xn,*hn,*y,*xnlength,*hnlength;
int i,a,n,b,m,l,N;
xn=(int *)0x80001000;
hn=(int *)0x80001100;
xnlength=(int *)0x80001200;
hnlength=(int *)0x80001204;
y=(int *)0x80002000;
a=*xnlength;
b=*hnlength;
if(a<=b)
{N=b;}
else
{N=a;}
for(i=0;i<N;i++)
{y[i]=0;
xn[a+i]=0;
hn[b+i]=0;
}
for(n=0;n<N;n++)
{
for(m=0;m<N;m++)
{ 
l=n-m;
if(l<0)
{l=l+N;}
y[n]=y[n]+(xn[m]*hn[l]);
}
}
halt:
goto halt;
}