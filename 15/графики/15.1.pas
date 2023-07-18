var 
    a, x, y, flag:integer;
begin
  for a := -100 to 500 do 
    begin
      flag := 0;
     
     for x := 1 to 100 do
        begin
          for y := 1 to 100 do  
            begin
              if ((75 <>  2*x + 3*y) or (a > 3*x) or (a > 2*y))= false  then
                flag := 1;
              if flag = 1 then break;  
            end;
          if flag = 1 then break; 
        end;
     
     if flag = 0 then
        begin
          writeln (a);
          break;
        end;        
   end;
end.