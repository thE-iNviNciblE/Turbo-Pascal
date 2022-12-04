Program MatrixMove;

Uses Crt;

Type MatrixType = (Selected, Not_Selected);

Var MatrixPlan: Array[1..3, 1..3] of MatrixType;
    CurrentXPos, CurrentYPos, Counter: Byte;
    TempChar: Char;
    TempBoolean: Boolean;

Procedure GetKeyboard;
Begin
     Repeat
           TempChar := ReadKey;
           If TempChar = #27 Then
              Begin
                   ClrScr;
                   Halt;
              End;
              If TempChar = #0 Then
                 Begin
                      TempChar := ReadKey;
                      If (TempChar = #72) or (TempChar = #75) or (TempChar = #77) or (TempChar = #80) Then
                         TempBoolean := True;
                 End;
     Until (TempBoolean = True);
     If (TempChar = #80) Then
        If (CurrentYPos = 3) Then
           CurrentYPos := 1
        Else
            CurrentYPos := CurrentYPos + 1;
     If (TempChar = #72) Then
        If (CurrentYPos = 1) Then
           CurrentYPos := 3
        Else
            CurrentYPos := CurrentYPos - 1;
     If (TempChar = #75) Then
        If (CurrentXPos = 1) Then
           CurrentXPos := 3
        Else
            CurrentXPos := CurrentXPos - 1;
     If (TempChar = #77) Then
        If (CurrentXPos = 3) Then
           CurrentXPos := 1
        Else
            CurrentXPos := CurrentXPos + 1;
     FillChar (MatrixPlan, Sizeof(MatrixPlan), Not_Selected);
     MatrixPlan[CurrentXPos, CurrentYPos] := Selected;
End;

Procedure PaintTable;

Var CntY, CntX: Byte;

Begin
     For CntX := 1 to 3 do
         For CntY := 1 to 3 do
             Begin
                  GotoXY (CntX, CntY);
                  If (MatrixPlan[CntX, CntY] = Selected) Then
                     Write ('X')
                  Else
                      Write ('O');
             End;

End;

Begin
     FillChar (MatrixPlan, SizeOf (MatrixPlan), Not_Selected);
     TempBoolean := False;
     CurrentXPos := 2;
     CurrentYPos := 2;
     MatrixPlan[2, 2] := Selected;
     ClrScr;
     For Counter := 1 to 3 do
         WriteLn ('OOO');
     Repeat
           PaintTable;
           GetKeyboard;
     Until 1=2;

End.

