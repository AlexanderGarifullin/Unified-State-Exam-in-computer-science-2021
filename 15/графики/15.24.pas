var
  f, a, x, y: integer;

begin
  for a := -100 to 1000 do 
  begin
    f := 0;
    for x := 1 to 10000 do 
    begin
      for y := 1 to 10000 do 
      begin
        if (3 * y + x < a) or (3 * x + 2 * y > 80) or (3 * x - 4 * y > 90) = false then 
        begin
          f := 1;
          break;
        end;
      end;
      if f = 1 then break;   
    end;
    if f = 0 then begin writeln(a);break; end; 
  end;
  
end.