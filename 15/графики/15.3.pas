var a, y, x, fl, t: integer;
begin
  for a := 1 to 200 do 
    begin
    fl := 0;
      for x := 0 to 100 do 
        begin
          for y := 0 to 100 do
            begin
              if ((36 <> y + 2*x) or (8*x > a) or (2*y > a))= false then 
                fl := 1;
                if fl = 1 then break;
            end;
          if  fl = 1 then break; 
        end;
      if (fl = 0) and (a > t) then t := a;     
    end;
    writeln (t);
end.