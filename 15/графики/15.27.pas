var
  x, y, a, f: integer;

begin
  for a := -100 to 1000 do
  begin
    f := 0;
    for x := 1 to 1000 do 
    begin
      for y := 1 to 1000 do 
      begin
        if (y + 4 * x < a) or (x + 3 * y > 100) or (5 * x + 2 * y > 150) = false then 
          f := 1;
        if f = 1 then break;
      end;
      if f = 1 then break;  
    end;
    if f = 0 then 
    begin
      writeln(a);
      break; 
    end; 
  end;
end.