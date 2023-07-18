var i,  f, mx,mn,j,c:integer;
begin
  for i := 850001 to 1000000 do
    begin
      f := 0; mx := 0; mn := 0;
      for j := 2 to round(sqrt(i)) do 
        if i mod j = 0 then
          begin
            mx := i div j;
            mn := j;
            break;
          end;
       f := mx - mn;
       if (f <> 0) and (f mod 3 = 0) then
        begin
          c += 1;
          if c > 6 then break;
          writeln(i,' ',f);
        end        
    end;     
end.