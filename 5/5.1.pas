var x,i : integer;
  a:array[0..1000] of integer;
begin
  for i := 0 to 1000 do a[i] := 0;
  for i := 20 to 600 do
    begin
      x := i;
      x := x div 4;
      a[x] += 1;
    end;
  x := 0;
  for i := 0 to 1000 do
    if a[i] <> 0 then x += 1;
  writeln(x);
end.