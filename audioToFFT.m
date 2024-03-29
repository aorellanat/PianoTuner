function [f,mfft] = audioToFFT(audioPath)

[y,fs] = audioread(audioPath);
y = y(:,1);

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
figure;plot(xEF,xEA);
xlabel('Frequency (Hz)');ylabel('Amplitude (V)');
title('FFT of enveloping');


end

