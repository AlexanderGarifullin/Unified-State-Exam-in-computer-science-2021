var a, x, y, z, fl: integer;
begin
  for a := 1 to 100 do 
    begin
      fl := 0;
      for x := 1 to 100 do 
        begin
          for y := 1 to 100 do 
            begin
              for z := 1 to 100 do 
                begin
                   if ((80 <>5*y+2*x+4*z) or (a < 6*x) or (a < y) or (a < 3*z)) = false then fl := 1;
                   if fl = 1 then break;
               end;
                if fl = 1 then break;
            end;
          if fl = 1 then break;
        end;
      if fl = 0 then writeln (a);  
    end;
end.