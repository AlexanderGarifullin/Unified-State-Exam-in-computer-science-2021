var
  a: array[1..1000] of integer;
  i: integer;

begin
  a[1] := 1;
  for i := 2 to 30 do a[i]:=0;
  for i := 1 to 7 do 
  begin
    if (i + 3 <= 7 ) then a[i + 3] += a[i];
    if i + 4 <= 7 then a[i + 4] += a[i];
    if i * 3 <= 7 then a[i * 3] += a[i];
  end;
  for i := 7 to 30 do 
  begin
    a[i + 3] += a[i];
    a[i + 4] += a[i];
    a[i * 3] += a[i];
  end;
  writeln(a[30]);
end.