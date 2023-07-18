var
  a, fl,  x, y: integer;

begin
  for a := -1000 to 1000 do 
  begin
    fl := 0;
    for x := 1 to 100 do 
    begin
      for y := 1 to 100 do 
        if ((x >= 13) or (x < 3 * y) or (x * y < a)) = false then fl := 1;
      if fl = 1 then break; 
    end;
    if fl = 0 then begin writeln(a); break; end;  
  end;
  
end.