var
  f, a, t, x, y: integer;

begin
  for a := -100 to 1000 do 
  begin
    f := 0;
    for x := 1 to 1000 do 
    begin
      for y := 1 to 1000 do 
      begin
        if (4 * y + 3 * x <> 65 ) or (x > a) or (3 * y > a) = false then 
        begin
          f := 1;
          break;
        end;
      end;
      if f = 1 then break;   
    end;
    if f = 0 then t := a;
  end;
  writeln(t);
end.