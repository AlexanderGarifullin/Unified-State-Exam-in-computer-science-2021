var a:array[5..100000] of integer;
    i:integer;
begin
  a[5] := 1;
  for i := 5 to 154 do 
    begin
      a[i+1] += a[i];
      a[i*2] += a[i];
      a[i*i] += a[i];
    end;
  writeln(a[154]);    
end.