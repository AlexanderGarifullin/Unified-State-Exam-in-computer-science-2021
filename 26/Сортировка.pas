const n = 3;
var
i,j,t:integer;
a:array [0..n] of integer;
begin
for i:=0 to n do readln (a[i]);
writeln;
for i:=0 to n do
 for j:=i+1 to n do 
 begin
 if a[i]>a[j] then
 begin
 t:=a[i];
 a[i]:=a[j];
 a[j]:=t;
 end
 end;
  for i:=0 to n do
    writeln (a[i]);
end.