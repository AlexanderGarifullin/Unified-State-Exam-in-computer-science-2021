var
  a: array[1..34] of integer;
  i: integer;

begin
  for i := 1 to 33 do a[i] := 0;
  a[10] := 1;
  for i := 9 to 33 do 
  begin
    a[i + 1] += a[i];
    if i <= 23 then a[i + 10] += a[i];
  end;
  writeln(a[33]);
end.