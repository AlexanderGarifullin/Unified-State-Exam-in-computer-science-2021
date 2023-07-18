var i,  c,  m:integer;
begin
  m := 1000000;
  for i := 2124 to 95432 do
    if ((i mod 10 = 2) xor (i mod 10 = 7)) and (i mod 3 = 0)and (i mod 13 = 0) and (i mod 17 = 0) then
      begin
        c += 1;
        if i < m then m := i;
      end;
 writeln(c,' ',m);     
end.