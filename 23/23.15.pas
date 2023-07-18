var a:array[2..100] of integer;
  i:integer;
begin
  a[2] := 1;
  for i := 2 to 10 do
    begin
      a[i+2] += a[i];
      a[i+3] += a[i];
      a[i+i-1] += a[i];
    end;
    writeln(a[11]);
end.