var
  y, t, x, a, fl: integer;

begin
  for a := 1 to 1000 do 
  begin
    fl := 0;
    for x := 1 to 1000 do 
    begin
      for y := 1 to 1000 do 
      begin
        if (((4 * y - x) > a) or (( x + 6 * y )< 210) or ((3 * y - 2 * x )< (30))) = false then fl := 1;
        if fl = 1 then break;
      end;
      if fl = 1 then break;  
    end;
    if fl = 0 then 
      t := a;
  end;
  writeln(t);
end.