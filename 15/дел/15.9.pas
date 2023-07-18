var
  x, n, f, a: integer;

begin
  for a := 1 to 1000000 do 
  begin
    f := 0;
    for x := 1 to 100000 do 
      if (x mod 18 = 0) <= ((not (x mod a = 0)) <= (not (x mod 12 = 0))) = false then
      begin
        f := 1;
        break;
      end;
    if f = 0 then n := a; 
  end;
  writeln(n);
end.