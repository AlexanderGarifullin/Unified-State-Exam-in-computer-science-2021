var i,f,max,min,j,c:integer;
begin
  for i := 850001 to 1000000 do
    begin
      f := 0; max := 0; min := 0;
      for j := 2 to round(sqrt(i)) do
        if i mod j = 0 then
          begin
            max := i div j;
            min := j;
            break;
          end;
      f := max - min;
      if (f <> 0) and (f mod 7 = 0) then
        begin
          c += 1;
          if c > 6 then break; 
          writeln(i,' ',f);          
        end;        
    end;
end.