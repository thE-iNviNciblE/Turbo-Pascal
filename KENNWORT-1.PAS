Program KeyCode;
Uses crt,dos;

Var code : String;
    C    : String;

label anf;
Begin
     anf:
     Clrscr;
     Write ('Bitte geben sie das Passwort ein.. ');
     Textcolor (black);
     Readln (c);
     Textcolor (white);
     If C = 'J'then Writeln ('Das Kennwort ist Korrekt');
     If not (c = 'JFK') then
     begin
     Writeln ('Falsch');
     goto anf;
     End;
     Readln;
end.