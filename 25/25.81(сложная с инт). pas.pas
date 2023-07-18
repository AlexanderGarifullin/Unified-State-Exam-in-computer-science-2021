var
  i, j, count, m: integer;
  jcop, t: real;

begin
  
  for i := 228224 to 531135 do 
  begin
    count := 0;m := 0;
    for j := 27 to i  do 
    begin
      if j mod 2 <> 0 then begin
        if i mod j = 0 then 
        begin
          jcop := j;
          t := power(jcop, (1 / 3));
          if (frac(t) = 0) or (frac(t) > 0.99999) then
            if i mod round(t) = 0 then 
            begin
              count += 1;
           end;
        end;
      end;
    end;  
    
    if count >= 4 then 
    begin
      for j := 27 to i  do 
      begin
        if j mod 2 <> 0 then begin
          if i mod j = 0 then 
          begin
            jcop := j;  
            t := power(jcop, (1 / 3)); 
            if (frac(t) = 0) or (frac(t) > 0.9999) then 
              if i mod round(t) = 0 then 
                if j > m then m := j;
          end;
        end;
      end;  
      writeln(count, ' ', m);
    end;  
  end;
end.
