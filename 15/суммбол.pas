var
  x, z, f: integer;

begin
  for z := -10000 to 1000 do 
  begin
    f := 0;
    for x := -10000 to 10000 do
      if ((x + z + 1 > 0) <= ((x - 7 <= 0) <= (x + 7 = 0))) = false then
      begin
        f := 1;
        break;
      end;
    if f = 0 then writeln(z);    
  end;
end.