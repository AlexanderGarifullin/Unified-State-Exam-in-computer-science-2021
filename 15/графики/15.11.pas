var a, x, y, fl : integer;
begin
  for a := 1 to 100 do 
    begin
      fl := 0;
      for x := 0 to 100 do 
        begin
          for y := 0 to 100 do 
            begin
              if ((a*(x-2)<y)<= ((x-10)*(20-x)<y))= false then fl := 1;
              if fl = 1 then break;
            end;
          if fl = 1 then break;  
        end;
        if fl = 0 then 
          begin
            writeln (a);
            break;
          end;
    end;
end.