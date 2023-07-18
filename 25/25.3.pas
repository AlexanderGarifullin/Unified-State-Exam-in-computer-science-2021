program p25;
var i,k,n,d:longint;

h:array[1..4] of longint;
begin
k:=0;
for i:=210235 to 210300 do 
  begin
  k:=0;
  for d:=2 to i div 2 do 
    begin
      if i mod d = 0 then 
        begin
         k:=k+1;
         if k>4 then break;
         h[k]:=d;
        end;
     end;
   if k=4 then writeln(h[1], ' ', h[2], ' ', h[3], ' ', h[4]);
  end;
end.