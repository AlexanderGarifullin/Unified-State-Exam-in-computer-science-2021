var a:array[2..240] of integer;
    i,  t:integer;
begin
  a[2] := 1;
  for i := 2 to 16 do
    begin
      a[i+1] += a[i];
      a[i*3] += a[i];
      a[i*4] += a[i];
    end;
  t := a[16];
  for i := 2 to 100 do a[i] := 0;
  a[16] := t;
  for i := 16 to 60 do 
    begin
      if (i+1 <> 21) then  a[i+1] += a[i];
      if (i*3 <> 21) then a[i*3] += a[i];
      if (i*4 <> 21) then a[i*4] += a[i];  
    end;
  writeln(a[60]);  
end.