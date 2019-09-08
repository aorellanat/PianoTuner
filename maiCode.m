
% The codes are prepared by Grover Zurita
% UPB

clc;clear all;close all;

% Collect data

[y,fs] = audioread('61.wav');
y = y(:,1);

%load R1F1L1P1.mat

test1=y;
x=y;
t=[1/fs:1/fs:length(x)/fs];

% First step: Check the very strong fault using FFT
xF=[fs/length(x):fs/length(x):floor(fs/2)];
xA=abs(fft(x));
xA=xA(1:length(xF));
figure;plot(xF,xA);
xlabel('Frequency (Hz)');ylabel('Amplitude (V)');
title('FFT of raw signal');
% Second step: Check the strong fault using enveloping
xE=hilbert(x);
xEF=[fs/length(xE):fs/length(xE):floor(fs/2)];
xEA=abs(fft(abs(xE)));
xEA=xEA(1:length(xEF));
%figure;plot(xEF,xEA);
%xlabel('Frequency (Hz)');ylabel('Amplitude (V)');
%title('FFT of enveloping');


