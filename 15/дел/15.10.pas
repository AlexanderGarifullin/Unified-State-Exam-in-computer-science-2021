var
  a, f, x: integer;

begin
  for a := 1 to 1000000 do
  begin
    f := 0;
    for x := 1 to 1000000 do 
      if (((x mod a <> 0) and (x mod 21 = 0)) <= (x mod 14 = 0)) = false then
      begin
        f := 1;
        break;
      end;
    if f = 0 then writeln(a);
  end;
end.