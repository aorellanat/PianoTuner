% UPB
clc;
clear all;
close all;

% Collect data
[x,fs]=audioread('88.wav');
fmax=fs/2;
Fs=fs;
t=[1/fs:1/fs:length(x)/fs];

% First step: Check the very strong fault using FFT
xF=[fs/length(x):fs/length(x):floor(fs/2)];
xA=abs(fft(x));
xA=xA(1:length(xF));
figure;subplot(4,1,1)
plot(xF,xA);
axis([0 500 0 15000])
xlabel('Frequency (Hz)');ylabel('Amplitude (V)');
title('FFT of raw signal');

% Second step: Check the strong fault using enveloping
xE=hilbert(x);
xEF=[fs/length(xE):fs/length(xE):floor(fs/2)];
xEA=abs(fft(abs(xE)));
xEA=xEA(1:length(xEF));
subplot(4,1,2);
plot(xEF,xEA);
axis([0 500 0 15000])
xlabel('Frequency (Hz)');ylabel('Amplitude (V)');
title('FFT of enveloping');

%Diseño del filtro de low pass filter
[b,a]=ellip(5,0.1,40,[130]*2/fs);
[H,w]=freqz(b,a,512*20);
subplot(4,1,3)
plot(w*Fs/(2*pi),abs(H))
axis([0 500 0 2])
xlabel('Frequency (Hz)');ylabel('Amplitude');
title('Low pass filter');

%plot(abs(H))
sf1=filter(b,a,x);
xFF=[fs/length(x):fs/length(x):floor(fs/2)];
xAF=abs(fft(sf1));
xAFF=xAF(1:length(xFF));
subplot(4,1,4)
plot(xFF,xAFF);
axis([0 500 0 10000])
xlabel('Frequency (Hz)');ylabel('Amplitude');
title('Signal after the low pass filter of the FFT');



