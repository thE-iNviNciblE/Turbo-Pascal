Program v;
uses crt,dos;

var code,code1,often:integer;

begin
randomize;
Textcolor (white);
clrscr;
often:=0;
code1:= Random(100);
repeat
Textcolor (magenta);
Writeln ('Was ist die gesuchte Zahl, sie ist nicht gr”áer als 100');
Normvideo;
readln (code);
If code < code1 then  Begin
                           Writeln ('Die Zahl ist gr”áer');
                           Readkey;
                           Clrscr;
                      End;
If code > code1 then  Begin
                           Writeln ('Die Zahl ist kleiner');
                           Readkey;
                           Clrscr;
                      End;
often := often +1;
If code = code1 then Writeln ('Das ist korekt');
until code = code1;
Textcolor (lightred);
Writeln;
gotoxy(21,15);
clrscr;
case often of
1:Writeln ('Das war Super');
2:Writeln ('Geht auch nocht etwas besser');
3:Writeln ('K”nnte besser sein ');
4:Writeln ('Das ist Schwach');
5:Writeln ('Du LOSER');
6:Writeln ('Fucker')
else Writeln ('Du bist ein Versager');
end;
readkey;
end.