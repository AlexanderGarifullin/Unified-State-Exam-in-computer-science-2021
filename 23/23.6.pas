var
  a: array[-10..30] of integer;
  i: integer;

begin
  
  a[1] := 1;
  for i := 2 to 7 do
    if i mod 3 = 0 then 
      a[i] := a[i - 3] + a[i - 4] + a[i div 3]
    else 
      a[i] := a[i - 3] + a[i - 4];
  writeln(a[7]);
  for i := -10 to 6 do a[i] := 0;
  
  for i := 8 to 30 do
    if i mod 3 = 0 then 
      a[i] := a[i - 3] + a[i - 4] + a[i div 3]
    else 
      a[i] := a[i - 3] + a[i - 4];
  writeln(a[30]);
end.