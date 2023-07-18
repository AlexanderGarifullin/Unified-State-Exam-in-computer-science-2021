var a, x, flag: integer;
begin
  for a := 1 to 100 do 
    begin
      flag := 0;
      for x := 1 to 1000 do 
        begin
          if ((( x mod a <> 0) and (x mod 21 = 0)) <= (x mod 14 = 0)) = false then 
            flag := 1;
        end;
       if flag = 0 then writeln (a); 
    end;
end.