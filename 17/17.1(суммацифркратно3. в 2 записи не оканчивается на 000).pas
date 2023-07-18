var
  min, i, count, t: integer;

begin
  min := 1000000;
  for i := 3721 to 7752 do 
  begin
    if (i mod 3 = 0) and (i mod 8 <> 0)
    then
    begin
      count += 1;
      if i < min then min := i;
    end;
  end;
  writeln(count, ' ', min);
end.