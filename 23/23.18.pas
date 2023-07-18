var a:array[5..1500] of integer;
    i,t:integer;
begin
  a[5] := 1;
  for i := 5 to 30 do 
    begin
      a[i+5] += a[i];
      a[i*5] += a[i];
    end;
    t := a[30] ;
    for i := 5 to 1500 do a[i] := 0;
    a[30] := t;
    for i := 30 to 280 do 
      begin
        a[60] := 0;
        a[i+5] += a[i];
        a[i*5] += a[i];
        a[60] := 0;
      end;
      writeln(a[280]);
end.