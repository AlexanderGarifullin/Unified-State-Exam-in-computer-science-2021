var
  f, a, x, y: integer;

begin
  for a := -100 to 100 do 
  begin
    f := 0;
    for x := 0 to 1000 do 
    begin
      for y := 0 to 1000 do 
      begin
        if ((x < 3 ) <= (x * x <= a)) and ((y * y < a) <= (y < 15)) = false then 
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
