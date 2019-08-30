function [f,mfft] = audioToFFT(audioPath)

[y,Fs] = audioread(audioPath);
y = y(:,1);

L = 4000;                     % Length of signal

NFFT = 2^nextpow2(L); % Next power of 2 from length of y
Y = fft(y,NFFT)/L;
f = Fs/2*linspace(0,1,NFFT/2+1);
mfft = 2*abs(Y(1:NFFT/2+1));

end

