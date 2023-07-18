var x, t, m, y, a : integer;
begin
  for a := 1 to 300 do
    begin
      t := 0;
        for x := 1 to 1000 do 
          begin
            for y := 1 to 1000 do 
              begin
                if (((x and 28 = 0) or (x and 22 =0) ) <= ((x and 56 <>0) <= (x and a = 0))) = false then 
                  t := 1;
              end;
            if t = 1 then break;  
          end;
       if t = 0 then 
        m := a;
    end;
    writeln(m);
end.