function [S, w] = audioToFFT(nameAudio)
[s,Fs] = audioread(nameAudio);

%signal = s(:,1);
S = fft(s(:,1));
w = (0:255)/256*(Fs/2);

end

