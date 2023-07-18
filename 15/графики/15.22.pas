var x , t, y,m, a : integer;
begin
  for a := -100 to 1000 do 
    begin
      t := 0;
        for x := 1 to 1000 do 
          begin
            for y := 1 to 1000 do 
              begin
                if ( ((x<=9) <= (x*x <=a)) and ((y*y <=a) <= (y<=9)))= false then 
                  begin
                    t := 1; break;
                  end;
              end;
             if t = 1 then break; 
          end;
        if t = 0 then 
          m :=a;
    end;
    writeln(m);
end.