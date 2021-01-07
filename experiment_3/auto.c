#include<fastmath67x.h>
#include<math.h>
void main()
{
int *xn,*xnlength,*bnlength,*output,*bn;
int i,k,l,n,m,z;no
xn=(int *)0x80001000;
xnlength=(int *)0x80001200;
bnlength=(int *)0x80001204;
output=(int *)0x80002000;
bn=(int *)0x80003000;
l=*xnlength;
i=0;
for(z=l-1;z>=0;z--)
{bn[z]=xn[i];
i++;
}
m=*bnlength;
for(i=0;i<(l+m-1);i++)
{output[i]=0;
xn[l+i]=0;
bn[m+i]=0;
}
for(n=0;n<l+m-1;n++)
{for(k=0;k<=n;k++)
{output[n]=output[n]+(xn[k]*bn[n-k]);}
}
halt:
goto halt;
}