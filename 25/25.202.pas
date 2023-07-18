var i,c,s,j:integer;
begin
c  := 1;
  for i := 350300 to 10000000 do
    begin
      s := 0;
      for j := 2 to i div 2 do 
        if i mod j = 0 then s += j;
      if (s mod 13 = 0) and (s <> 0) then
        begin
            writeln(i,' ',s div 13);
            c += 1;     
        end;
        if c > 6 then break;
    end;
end.