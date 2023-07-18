var
  a, x, y, fl: integer;

begin
  for a := 1 to 100 do 
  begin
    for x := 1 to 100 do 
    begin
      for y := 1 to 100 do 
      begin
        if ((3 * y + 2 * x <> 130) or (3 * x > a) and (2 * y > a)) = false then fl := 1;
        if fl = 1 then break;
      end;
      if fl = 1 then break;  
    end;
    if fl = 0 then writeln(a);
  end;
end.