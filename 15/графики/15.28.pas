var
  a, x, y, fl: integer;

begin
  for a := -100 to 100 do 
  begin
    fl := 0;
    for x := 1 to 10000 do
    begin
      for y := 1 to 10000 do 
      begin
        if ((x * y > a) and (x > y) and (x < 8)) = true then fl := 1;
        if fl = 1 then break;
      end;
      if fl = 1 then break;
    end;
    if fl = 0 then 
    begin
      writeln(a);
      break;
    end;
  end;  
end.