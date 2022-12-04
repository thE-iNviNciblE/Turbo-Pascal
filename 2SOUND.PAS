Program ddd;
uses crt,dos;

var re:STring;
    xx,ee,rand: integer;
begin
clrscr;
Writeln ('Gib die Warte Zeit an (delay)'); readln (ee);
Writeln ('Gib bitte den Randomwert ein bitte <2000'); readln (rand);
Writeln ('Please enter Text '); readln (re);
repeat
randomize;
Textbackground(100);
Textcolor (random(200));
xx:= random(rand);
sound (133+xx); delay (ee) ; gotoxy (1,xx);Write (re);
sound (234+xx); delay (ee) ; gotoxy (xx,43); write (re);
sound (534+xx); delay (ee) ;write (re);
sound (534+xx); delay (ee) ;

until keypressed;
readkey;
nosound;
end.