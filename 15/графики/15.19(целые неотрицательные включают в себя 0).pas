var a, fl ,  x, y : integer;
begin
  for a := -1000 to 1000 do 
    begin
      fl := 0;
      for x := 0 to 1000 do 
        begin
          for y := 0 to 1000 do 
            if ((2*y+5*x <a) or (x+y>80)) = false then fl := 1;
           if fl = 1 then break; 
        end;
      if fl = 0 then begin  writeln(a); break; end;
    end;
  
end.
//для любых целых неотрицательных значений х и у 