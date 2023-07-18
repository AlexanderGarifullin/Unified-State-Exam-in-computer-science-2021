var x,  y,  a:integer;
    f:boolean;
begin
  for a := -100 to 1000 do
    begin
      f := true;
      for x := 1 to 1000 do
        begin
          for y := 1 to 1000 do 
            if (x < 9) <= ((5*y < x) <= (2*x*y<a)) = false then 
              begin
                f := false;
                break;
              end;
          if not f then break;      
        end;
      if f then
        begin
          writeln(a);
          break;
        end;
    end;
end.