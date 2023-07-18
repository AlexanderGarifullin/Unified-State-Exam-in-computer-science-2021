var f :boolean;
    i,  x1, x2, c1, c2, c,  m:integer;
begin
  for i := 4096 to 15624 do
     if i mod 256 = 250 then
      begin
        c += 1;
        m := i;
      end;
    writeln(c,' ',m);
end.