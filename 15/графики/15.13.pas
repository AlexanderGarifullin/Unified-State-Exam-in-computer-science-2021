var a,x,y,fl:integer;
begin
  for a := 1 to 100 do 
    begin
      fl := 0;
      for x := 1 to 100 do 
        begin
          for y := 1 to 100 do 
            begin
              if ((x>=7)or(2*x<y)or(x*y<a)) = false then fl := 1;
              if fl = 1 then break;
            end;
          if fl = 1 then break;  
        end;
      if fl = 0 then 
        begin
        writeln(a);
        break;
        end;
    end;
end.