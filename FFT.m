clc;
clear all;
N=input('Enter the no.of points :');
x=input('Enter the input sequence :');
X=fft(x,N);
magx=abs(X);
phase=angle(X);
subplot(3,1,1);stem(0:N-1,magx);grid;
xlabel('w');title('Magnitude of X(w)');ylabel('Magnitude');
subplot(3,1,2);stem(0:N-1,phase);grid;
xlabel('w');title('Angle of X(w)');ylabel('angle');
xb=ifft(X,N);
subplot(3,1,3);stem(0:length(x)-1,xb(1:length(x)));grid;
xlabel('index');ylabel('Amplitude');title('Inverse Discrete Fourier Transform');