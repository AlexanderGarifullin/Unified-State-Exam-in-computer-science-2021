var
  a: array[1..8] of integer;
  i, j, max, maxs, n: integer;

begin
  readln(n);
  for i := 1 to 7 do 
    readln(a[i]);
  max := 0;maxs := 0;
  for i := 1 to n - 7 do 
  begin
    readln(a[8]);
    if (a[1] > max) then max := a[1];
    if (max + a[8] > maxs) then 
      maxs := max + a[8];
    for j := 1 to 7 do 
      a[j] := a[j + 1];
  end;
  writeln(maxs);       
end.  