var
  i, min, max: integer;

begin
  min := 1000000;
  max := 0;
  for i := 2568 to 7858 do
    if ((i mod 4 = 0) or (i mod 5 = 0)) and (i mod 11 <> 0) and (i mod 20 <> 0) and (i mod 27 <> 0) then
    begin
      if i < min then min := i;
      if i > max then max := i;
    end;
  writeln(min, ' ', max);
end.