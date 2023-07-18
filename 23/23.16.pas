var
  a: array[2..1000] of integer;
  i, t: integer;

begin
  a[2] := 1;
  for i := 2 to 7 do
  begin
    a[i + 1] += a[i];
    a[i * 2] += a[i];
  end;
  t := a[7];
  for i := 2 to 100 do a[i] := 0;
  a[7] := t;
  
  for i := 7 to 16 do
  begin
    a[i + 1] += a[i];
    a[i * 2] += a[i];
  end;
  t := a[16];
  for i := 2 to 100 do a[i] := 0;
  a[16] := t;
  for i := 16 to 39 do
  begin
    a[i + 1] += a[i];
    a[i * 2] += a[i];
  end;
  writeln(a[39]);
end.