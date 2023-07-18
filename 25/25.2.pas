Program z25;
var
i,d:longint;
num:integer;
del:array[1..4] of longint;
begin
 for i:= 185311 to 185330 do 
 begin
  num:=0;
  for d:=1 to i do
    begin
      if i mod d = 0 then
        begin
        num:=num+1;
         if num > 4 then break;
         del[num]:=d;
         end; 
     end;
  if num = 4 then writeln(del[1],' ',del[2],' ',del[3],' ',del[4]);
  end;
end.