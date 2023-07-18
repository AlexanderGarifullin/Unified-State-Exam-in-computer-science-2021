var a:array[1..1000] of integer;
i:integer;
begin
  a[1] := 1;
  for i := 1 to 15 do
    begin
      a[i+1] += a[i];
      a[i*10] += a[i];
      a[2*i] += a[i];
      a[2*i+1] += a[i];
    end;
    writeln(a[15]);
end.