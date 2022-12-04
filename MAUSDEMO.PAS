
Program Mausdemo;

Uses Crt, Dos;

Var Reg : Registers;
    I: Integer;

Begin
     ClrScr;
     Reg.ax := 0;
     Intr ($33, Reg);
     If Reg.ax = 0 Then
        Write ('Kein Maustreiber gefunden')
     Else
         Begin
              Writeln ('Anzahl der Maustasten',reg.bx);
              Reg.ax := 1;
              Intr ($33,Reg);
              Repeat
                    Reg.ax := 3;
                    Intr ($33,Reg);
                    Gotoxy (10,10);
                    ClrEol;
                    Write ('Position  ',Reg.cx,' ',Reg.dx);
                    Write ('gedrÅckte Taste ');
                    Case Reg.bx of
                         1:Write ('links');
                         2:Write ('rechts');
                         4:Write ('Mitte');
                    End;
                    Delay (100);
              Until Keypressed;
              For I:= 0 to 79 do
                  Reg.ax := 4;
              Intr($33,reg);
              Reg.cx := (8 * i);
              Reg.dx := (8 * i mod 200);
              Delay (1000);
              Reg.ax:= 2;
              Intr ($33,Reg);
              Delay (2000);
         End;
end.
