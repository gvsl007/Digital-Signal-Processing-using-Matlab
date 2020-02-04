 clc;
 clear all;
 close all;
 rp=input('Enter the passband ripple :');
 rs=input('Enter the stopband ripple :');
 wp=input('Enter the passband edge frequency :');
 ws=input('Enter the stopband edge frequency :');
 fs=input('Enter the sampling frequency :');
 w1=2*wp/fs;
 w2=2*ws/fs;
 [n1 wn1]=buttord(w1,w2,rp,rs);
 [b1 a1]=butter(n1,wn1,'stop');
 [n2 wn2]=cheb1ord(w1,w2,rp,rs);
 [b2 a2]=cheby1(n2,rp,wn2,'stop');
 [n3 wn3]=cheb2ord(w1,w2,rp,rs);
 [b3 a3]=cheby2(n3,rp,wn3,'stop');
 w=0:0.01:pi;
 [h1 om1]=freqz(b1,a1,w);
 m1=20*log10(abs(h1));
 an1=angle(h1);
 [h2 om2]=freqz(b2,a2,w);
 m2=20*log10(abs(h2));
 an2=angle(h2);
 [h3 om3]=freqz(b3,a3,w);
 m3=20*log10(abs(h3));
 an3=angle(h3);
 c=rs+20;
 
 
 figure;
 subplot(2,1,1);
 plot(om1/pi,m1);grid;
 ylabel('Gain in dB');
 xlabel('Normalized Frequency');
 title('Magnitude Plot of Butterworth Filter');
 axis([0 1 -c 10]);
 subplot(2,1,2);
 plot(om1/pi,an1);grid;
 ylabel('Phase in radians');
 xlabel('Noramlized Frequency');
 title('Phase Plot of Butterworth Filter');
 
 figure;
 subplot(2,1,1);
 plot(om2/pi,m2);grid;
 ylabel('Gain in dB');
 xlabel('Normalized Frequency');
 title('Magnitude Plot of Chebyshev Type 1 Filter');
 axis([0 1 -c 10]);
 subplot(2,1,2);
 plot(om2/pi,an2);grid;
 ylabel('Phase in radians');
 xlabel('Noramlized Frequency');
 title('Phase Plot of Chebyshev Type 1 Filter');
 
 
 figure;
 subplot(2,1,1);
 plot(om3/pi,m3);grid;
 ylabel('Gain in dB');
 xlabel('Normalized Frequency');
 title('Magnitude Plot of Chebyshev Type 2 Filter');
 axis([0 1 -c 10]);
 subplot(2,1,2);
 plot(om3/pi,an3);grid;
 ylabel('Phase in radians');
 xlabel('Noramlized Frequency');
 title('Phase Plot of Chebyshev Type 2 Filter');
 