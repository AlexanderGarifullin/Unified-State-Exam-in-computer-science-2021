var
  y, t, x, a, fl: integer;

begin
  for a := -1000 to 1000 do 
  begin
    fl := 0;
    for x := 1 to 1000 do 
    begin
      for y := 1 to 1000 do 
      begin
        if (((3 * y - x) > a) or ((2 * x + 3 * y )< 30) or ((2 * y - x )< (-31))) = false then fl := 1;
        if fl = 1 then break;
      end;
      if fl = 1 then break;  
    end;
    if fl = 0 then 
      t := a;
  end;
  writeln(t);
end.