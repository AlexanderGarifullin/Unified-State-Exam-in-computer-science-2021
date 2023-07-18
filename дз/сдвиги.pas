const n = 10;
var a :array[1..n] of integer;
  i, t:integer;
begin
  for i := 1 to n do  a[i] := i;
  writeln(a);
  //сдвиг врпаво
  t := a[10];
  for i := n downto 2 do 
    a[i] := a[i-1];
  a[1]:=t;
  writeln(a);   
  
  //сдвиг влево
 t := a[1];
 for i := 1 to 9 do
 a[i] := a[i+1];
 a[10]:=t;
 writeln(a);
end.