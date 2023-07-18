var
  a, x, f, c, y: integer;

begin
  for a := 1 to 1000 do 
  begin
    f := 0;
    for x := 1 to 1000 do 
    begin
      for y := 1 to 1000 do 
      begin
        if (((x <= 10) <= (x * x < a)) and ((y * y <= a) <= (y < 15))) = false then 
          f := 1;
        if f = 1 then break;
      end;
      if f = 1 then break; 
    end;
    if f = 0 then c += 1; 
  end;
  writeln(c);
end.