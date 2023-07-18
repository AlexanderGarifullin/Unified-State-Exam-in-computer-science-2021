var a:array[2..100] of integer;
i,t:integer;
begin
  a[2] := 1;
  for i := 2 to 9 do
    begin
      a[i+1] += a[i];
      a[i*2] += a[i];
    end;
  t := a[9];
  for i := 2 to 100 do a[i] := 0;
  a[9] := t;
  for i := 9 to 20 do 
    begin
      a[i+1] += a[i];
      a[i*2] += a[i];
    end;
  t := a[20];
  for i := 2 to 100 do a[i] := 0;  
  a[20] := t;
  for i := 20 to 45 do 
      begin
      a[i+1] += a[i];
      a[i*2] += a[i];
    end;
    writeln(a[45]);
end.