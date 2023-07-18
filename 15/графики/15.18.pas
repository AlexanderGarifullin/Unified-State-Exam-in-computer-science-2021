var a, fl , t, x, y : integer;
begin
  for a := -1000 to 1000 do 
    begin
      fl := 0;
      for x := 1 to 100 do 
        begin
          for y := 1 to 100 do 
            if (((y*y<=a)<=(y<=15))and((x<=3)<=(x*x<a))) = false then fl := 1;
           if fl = 1 then break; 
        end;
      if fl = 0 then t := a;  
    end;
    writeln(t);
end.