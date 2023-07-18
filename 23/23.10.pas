var
  a: array[4..1000] of integer;
  i, t: integer;

begin
  a[4] := 1;
  for i := 4 to 10 do 
  begin
    a[i + 1] += a[i];
    a[i + 2] += a[i];
    a[i * 3] += a[i];
  end;
  t := a[8];
  for i := 4 to 1000 do 
    a[i] := 0;
  a[8] := t;
  for i := 8 to 23 do 
  begin
    a[11] := 0;
    a[18] := 0;
    if (i + 1 <> 11) and (i + 1 <> 18) then a[i + 1] += a[i];
    if (i + 2 <> 11) and (i + 2 <> 18) then a[i + 2] += a[i];
    if (i * 3 <> 11) and (i * 3 <> 18) then a[i * 3] += a[i];
    a[11] := 0;
    a[18] := 0;
  end;
  writeln(a[23]);
end.