var a:array[1..130] of integer;
    i : integer;

begin
  for i := 1 to 130 do a[i] := 0;
  a[7] := 1;
  for i := 7 to 42 do 
    begin
      a[i+2] += a[i];
      a[2*i-1] += a[i];
      a[2*i+1] += a[i];
    end;
    
  for i := 44 to 63 do 
    begin
      a[i+2] += a[i];
      a[2*i-1] += a[i];
      a[2*i+1] += a[i];
    end;  
  writeln(a[63]);  
end.