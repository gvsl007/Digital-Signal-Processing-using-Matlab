clc;
clear all;
n=input('enter sequence size :')

% Impulse Function

t=-n:n;
impulse=[zeros(1,n) 1 zeros(1,n)];
figure,subplot(2,1,1)
plot(t,impulse);
xlabel('Time');ylabel('Amplititude');title('Impulse Function');
subplot(2,1,2);
stem(t,impulse);
xlabel('Time');ylabel('Amplititude');title('Impulse Function');

% Unit Step Function

step=[zeros(1,n) ones(1,n+1)];
figure,subplot(2,1,1);
plot(t,step);
xlabel('Time');ylabel('Amplititude');title('Unit Step Function');
subplot(2,1,2);
stem(t,step);
xlabel('Time');ylabel('Amplititude');title('Unit Step Function');


%Unit Ramp Function

ramp=0:n;
figure,subplot(2,1,1);
plot(ramp,ramp);
xlabel('Time');ylabel('Amplititude');title('Unit Ramp Function');
subplot(2,1,2);
stem(ramp,ramp);
xlabel('Time');ylabel('Amplititude');title('Unit Ramp Function');

%Exponential Function

t1=0:0.1:n;
xexp=1000*exp(t1);
figure,subplot(2,1,1);
plot(t1,xexp);
xlabel('Time');ylabel('Amplititude');title('Exponential Function');
subplot(2,1,2);
stem(t1,xexp);
xlabel('Time');ylabel('Amplititude');title('Exponential Function');

%Sine Function

xsin=sin(t1);
figure,subplot(2,1,1);
plot(t1,xsin);
xlabel('Time');ylabel('Amplititude');title('Sine Function');
subplot(2,1,2);
stem(t1,xsin);
xlabel('Time');ylabel('Amplititude');title('Sine Function');

%Cosine Function

xcos=cos(t1);
figure,subplot(2,1,1);
plot(t1,xcos);
xlabel('Time');ylabel('Amplititude');title('Cosine Function');
subplot(2,1,2);
stem(t1,xcos);
xlabel('Time');ylabel('Amplititude');title('Cosine Function');


%Sawtooth Function

tsaw=0:0.001:0.1;
xsaw=sawtooth(2*pi*100*tsaw,0.5);
figure,subplot(2,1,1)
plot(tsaw,xsaw);
xlabel('Time');ylabel('Amplititude');title('Sawtooth Function');
subplot(2,1,2)
stem(tsaw,xsaw);
xlabel('Time');ylabel('Amplititude');title('Sawtooth Function');

%Square Function

tsqu=0:0.001:0.1;
xsqu=square(2*pi*100*tsaw,50);
figure,subplot(2,1,1)
plot(tsqu,xsqu);
xlabel('Time');ylabel('Amplititude');title('Square Function');
subplot(2,1,2)
stem(tsqu,xsqu);
xlabel('Time');ylabel('Amplititude');title('Square Function');

%Random(noise) Function

xrand=rand(1,100);
figure,subplot(2,1,1)
plot(0:99,xrand);
xlabel('Time');ylabel('Amplititude');title('Random Noise Function');
subplot(2,1,2)
stem(0:99,xrand);
xlabel('Time');ylabel('Amplititude');title('Random NOise Function');
