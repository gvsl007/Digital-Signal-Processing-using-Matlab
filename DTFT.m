clc;
clear all;
x=input('enter your sequence :');
l=length(x);
w=-pi:0.1:pi;
j=sqrt(-1);
for i=1:length(w)
    X(i)=0;
    for n=1:l
        X(i)=X(i)+x(n)*exp(-j*w(i)*(n-1));
    end
end
magx=abs(X);
phasex=angle(X);
figure,subplot(2,1,1);
plot(w/pi,magx);
xlabel('Frequency');ylabel('Magnitude');title('DTFT:Magnitute plot');
subplot(2,1,2);
plot(w/pi,phasex);
xlabel('Frequency');ylabel('Phase');title('DTFT:Phase plot');



    



