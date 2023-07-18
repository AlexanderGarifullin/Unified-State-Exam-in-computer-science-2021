var
  i,t: integer;
  a: array[3..1000] of integer;

begin
  for i := 3 to 1000 do a[i] := 0;
  a[3] := 1;
  for i := 3 to 19 do 
  begin
    if i + 1 <> 12 then a[i + 1] += a[i];
    if (i * 2 <> 12) and (i * 2 <= 20) then a[i * 2] += a[i];
  end; 
  writeln(a[20]);
  t := a[20]; 
  for i := 3 to 1000 do a[i] := 0;
  a[20] := t;
  for i := 20 to 30 do 
    begin
      a[i + 1] += a[i];
      a[i * 2] += a[i];
    end;
    writeln(a[30]);
end.