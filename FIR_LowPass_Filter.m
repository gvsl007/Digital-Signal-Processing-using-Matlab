clc;
clear all;
close all;
n=input('Enter The Order Of The Filter :');
wc=input('Enter The Cutoff Frequency :');
fs=input('Enter The Sampling Frequency :');
w1=2*wc/fs;
n1=n+1;

%Using Rectangular Window

y1=rectwin(n1);
b1=fir1(n,w1,y1);
[h1 om]=freqz(b1,1,256);
m1=20*log10(abs(h1));
subplot(2,3,1);
plot(om/pi,m1);grid;
xlabel('Normalized Frequency');
ylabel('Gain in dB');
title('FIR Lowpass Using Rectangular Window');
axis([0 1 -100 10]);

%Using Triangular Window

y2=triang(n1);
b2=fir1(n,w1,y2);
[h2 om]=freqz(b2,1,256);
m2=20*log10(abs(h2));
subplot(2,3,2);
plot(om/pi,m2);grid;
xlabel('Normalized Frequency');
ylabel('Gain in dB');
title('FIR Lowpass Using Triangular Window');
axis([0 1 -100 10]);

%Using Hamming Window

y3=hamming(n1);
b3=fir1(n,w1,y3);
[h3 om]=freqz(b3,1,256);
m3=20*log10(abs(h3));
subplot(2,3,3);
plot(om/pi,m3);grid;
xlabel('Normalized Frequency');
ylabel('Gain in dB');
title('FIR Lowpass Using Hamming Window');
axis([0 1 -100 10]);

%Using Hanning Window

y4=hann(n1);
b4=fir1(n,w1,y4);
[h4 om]=freqz(b4,1,256);
m4=20*log10(abs(h4));
subplot(2,3,4);
plot(om/pi,m4);grid;
xlabel('Normalized Frequency');
ylabel('Gain in dB');
title('FIR Lowpass Using Hanning Window');
axis([0 1 -100 10]);

%Using Blackman Window

y5=blackman(n1);
b5=fir1(n,w1,y5);
[h5 om]=freqz(b5,1,256);
m5=20*log10(abs(h5));
subplot(2,3,5);
plot(om/pi,m5);grid;
xlabel('Normalized Frequency');
ylabel('Gain in dB');
title('FIR Lowpass Using Blackman Window');
axis([0 1 -100 10]);

%Using Kaiser Window

y6=kaiser(n1,5);
b6=fir1(n,w1,y6);
[h6 om]=freqz(b6,1,256);
m6=20*log10(abs(h6));
subplot(2,3,6);
plot(om/pi,m6);grid;
xlabel('Normalized Frequency');
ylabel('Gain in dB');
title('FIR Lowpass Using Kaiser Window');
axis([0 1 -100 10]);
