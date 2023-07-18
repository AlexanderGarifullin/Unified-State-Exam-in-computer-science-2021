var
  a, x, y, fl, t: integer;

begin
  for a := 1 to 1000 do 
  begin
    fl := 0;
    for x := 1 to 100 do 
    begin
      for y := 1 to 100 do 
      begin
        if ((x * y < 121) or (y > a) or (x >= a)) = false then fl := 1;
        if fl = 1 then break;
      end;
      if fl = 1 then break;
    end;
    if fl = 0 then t := a;
  end;
  writeln(t);
end.