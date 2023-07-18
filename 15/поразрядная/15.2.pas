var
  a, f, count, x: integer;

begin
  count := 0;
  for a := 44 to 62 do
  begin
    f := 0;
    for x := 1 to 10000 do 
      if (((x and 56 <> 0) <= (x and 18 <> 0)) or (x and a <> 0)) <= ((x and 18 = 0) and (x and a = 0) and (x and 43 <> 0)) = true then
      begin
        f := 1;
        break;
      end;
    if f = 0 then count += 1;; 
  end;
  writeln(count);
end.