
uses Crt;

var
  X, Y: Byte;
begin
  TextBackground(Black);  
  ClrScr;
  repeat
    X := Succ(Random(80));  
    Y := Succ(Random(25));
    Window(X, Y, X + Random(40), Y + Random(8));
    TextBackground(Random(16)); 
    ClrScr;
  until KeyPressed;
end.

