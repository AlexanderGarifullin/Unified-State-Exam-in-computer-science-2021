var a,x,y,fl :integer;
begin
  for a := 1 to 100 do
    begin
      fl := 0;
      for x := 1 to 100 do 
        begin
          for y := 1 to 100 do 
            begin
              if ((y + 3*x <> 60) or (x > a) or (y>a)) = false then fl := 1;
              if fl = 1 then break;
            end;
             if fl = 1 then break;
        end;
      if fl = 0 then writeln (a);  
    end;
end.