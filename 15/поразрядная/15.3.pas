var
  a, f, x: integer;

begin
  for a := 1 to 1000000 do
  begin
    f := 0;
    for x := 1 to 1000000 do 
      if ((x and 17 <> 0) <= ((x and a <> 0) <= (x and 58 <> 0))) <= ((x and 8 = 0) and (x and a <> 0) and (x and 58 = 0 )) = true then
      begin
        f := 1;
        break;
      end;
    if f = 0 then writeln(a); 
  end;
end.