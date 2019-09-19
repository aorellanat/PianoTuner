function text = istuned(standard,actual)
if standard > actual
    text = "Se debe tensar la cuerda";
elseif standard == actual
    text = "La cuerda está afinada";
else 
    text = "Se debe aflojar la cuerda";

end

end