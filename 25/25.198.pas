var i,  s, j : integer;
begin
  for i := 1204300 to 1204380 do
    begin
      s := 0;
      for j := 2 to i div 2 do
        if i mod j = 0 then
          if j mod 2 = 0 then
            s += j;
      if (s > 0) and (s mod 10 = 0) then
        writeln(i,' ',s);
    end;
end.