function text = istuned(standard,actual)
if standard > actual
    text = "Se debe tensar la cuerda";
    [y,Fs] = audioread('SedebeTensar.mp3');
sound(y,Fs);
elseif standard == actual
    text = "La cuerda está afinada";
    [y,Fs] = audioread('EstaAfinado.mp3');
sound(y,Fs);
else 
    text = "Se debe aflojar la cuerda";
    [y,Fs] = audioread('SedebeAflojar.mp3');
sound(y,Fs);

end

end