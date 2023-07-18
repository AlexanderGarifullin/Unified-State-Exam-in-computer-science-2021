var a:array[1..24] of integer;
        i:integer;
begin
a[1]:=1;
  for i := 1 to 24 do 
    begin
    if (i + 2 < 25) then a[i+2]+=a[i];
    if i*2 < 25 then a[i*2]+=a[i];
    end;
  writeln (a[24]);
end.