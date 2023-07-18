var a:array[1..16] of integer;
        i:integer;
begin
a[1]:=1;
  for i := 1 to 16 do 
    begin
    if (i + 1 < 17) then a[i+1]+=a[i];
    if i*2 < 17 then a[i*2]+=a[i];
    end;
  writeln (a[16]);
end.