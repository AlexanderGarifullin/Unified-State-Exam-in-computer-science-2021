var
  a: array[1..9] of integer;
  n, i, x, mn, imn: integer;

begin
  readln(n);
  for i := 1 to n do
  begin
    readln(x);
    while x > 9 do 
      x := x div 10;
    a[x] := a[x] + 1;      
  end;
  mn := 100;
  for i := 1 to 9 do 
    if (a[i] < mn) and (a[i] > 0) then 
    begin
      mn := a[i];imn := i;
    end;
  writeln(imn);    
end.  