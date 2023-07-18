var
  i, t: integer;
  a: array[3..100] of integer;

begin
  a[3] := 1;
  for i := 3 to 12 do 
  begin
    a[i + 2] += a[i];
    a[i + 3] += a[i];
  end;
  writeln(a[12]);  
  t := a[12];
  for i := 3 to 100 do a[i] := 0;
  a[12] := t;
  
  for i := 12 to 25 do 
  begin
    a[i + 2] += a[i];
    a[i + 3] += a[i];
  end;
  writeln(a[25]);
  for i := 12 to 25 do 
    write(i:5);
  writeln;
  for i := 12 to 25 do 
    write(a[i]:5); 
end.