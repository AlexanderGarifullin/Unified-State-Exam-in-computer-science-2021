var a: array[-10..30] of integer;
  i,t:integer;
begin
  a[30] := 1;
  for i := 30 downto 10 do
    begin
      a[i-1] += a[i];
      a[i div 2] += a[i];
    end;
  t := a[10];
  for i := -10 to 30 do a[i] := 0;
  a[10] := t;
  for i := 10 downto 1 do
    begin
      a[i-1] += a[i];
      a[i div 2] += a[i];
    end;
   writeln(a[1]); 
end.