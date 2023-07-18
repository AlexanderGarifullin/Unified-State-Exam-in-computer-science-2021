var c, i, m:integer;
begin
m := maxint;
c := 0;
  for i := 1206 to 14992 do
    if ((i mod 10 = 3) xor (i mod 10 = 6)) and (i mod 3 <> 0) and (i mod 4 <> 0) and (i mod 5 <> 0) then
      begin
        if i < m then m := i;
        c += 1;
      end;
      writeln(c,' ',m);
end.