clc;
clear all;
N=input('Enter the Input Sequence Size :');
x=input('Enter the Input Sequence :');
x=[x zeros(1,N-length(x))];
a=sqrt(-1);
for i=1:N
    X(i)=0;
    for j=1:N
        k=(a*2*pi*(j-1)*(i-1))/N;
        X(i)=X(i)+x(j)*exp(-k);
    end
end
magx=abs(X);
phase=angle(X);
figure,subplot(2,1,1);stem(0:N-1,magx);grid;
xlabel('K');ylabel('magnitude');title('Magnitude plot of DFT (180)');
subplot(2,1,2);stem(0:N-1,phase);grid;
xlabel('K');ylabel('phase');title('Phase plot of DFT (180)');



