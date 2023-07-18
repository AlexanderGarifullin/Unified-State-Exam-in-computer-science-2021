var
  t, x, a, fl: integer;

begin
  for a := 1 to 10000 do 
  begin
    fl := 0;
    for x := 1 to 10000 do 
    begin
      if (((x mod 40 = 0) or (x mod 64 = 0)) <= (x mod a = 0)) = false then fl := 1;
      if fl = 1 then break;
    end;
    if fl = 0 then t := a;
  end;
  writeln(t);
end.