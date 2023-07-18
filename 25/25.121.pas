var
  i, t, j: integer;

begin
  for i := 224466 to 664422 do 
  begin
    t := 0;
    if (i mod 5 = 0) and (i mod 7 = 0) and (i mod 13 = 0) and 
    not (i mod 25 = 0) and not (i mod 49 = 0) and not (i mod 169 = 0) then 
    begin
      for j := 2 to i div 2 do 
        if i mod j = 0 then 
        begin
          t := j;
          if t > 100000 then break;
        end;
    end;
    
    if (t <= 100000) and (t mod 10 = 9) and (t div 10 mod 10 = 1) and (t > 0) then 
      writeln(i, ' ', t);
  end;
end. 