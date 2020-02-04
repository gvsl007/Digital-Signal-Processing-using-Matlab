clc;
clear all;
close all;
x1=input('enter your first input sequence');
x3=input('enter your second input sequence');
x2=fliplr(x3);
N1=length(x1);
N2=length(x2);
N=N1+N2-1;
X1=[x1 zeros(1,N-N1)];
X2=[x2 zeros(1,N-N2)];
for m=1:N
    y(m)=0;
    for n=1:N
        i=m-n+1
        if(i<=0)
            i=N+i;
        end
        y(m)=y(m)+X1(n)*X2(i);
    end
end
n=0:N-1;
subplot(3,1,1);stem(1:N1,x1,'linewidth',1.5);
xlabel('time');
ylabel('x1(n)');
title('input sequence x1(n)');
subplot(3,1,2);
stem(1:N2,x3,'linewidth',1.5);
xlabel('time');
ylabel('x2(n)');
title('input sequence x2(n)');
subplot(3,1,3);
stem(n,y,'linewidth',1.5);
xlabel('time');
ylabel('y');
title('Auto Correlation');

