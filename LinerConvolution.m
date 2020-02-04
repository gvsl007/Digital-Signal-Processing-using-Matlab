clc;
clear all;
x1=input('enter the first sequence :');
x2=input('enter the second sequence :');
N1=length(x1);
N2=length(x2);
N=N1+N2-1;
x1=[x1 zeros(1,N-N1)];
x2=[x2 zeros(1,N-N2)];
for m=1:N
    y(m)=0;
    for n=1:N
        i=m-n+1;
        if(i<=0)
            i=N+i;
        end
     y(m)=y(m)+x1(n)*x2(i);
    end
end
subplot(3,1,1);stem(0:N1-1,x1(1:N1));xlabel('Time');ylabel('Amplitude');title('impulse sequence');
subplot(3,1,2);stem(0:N2-1,x2(1:N2));xlabel('Time');ylabel('Amplitude');title('impulse sequence');
subplot(3,1,3);stem(0:N-1,y);xlabel('Time');ylabel('Amplitude');title('linear Convolution');
