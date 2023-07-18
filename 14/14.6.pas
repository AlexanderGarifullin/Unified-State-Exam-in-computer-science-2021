var
  a, osn: BIGinteger;
  count: integer;

begin
  osn := 3;count := 0;
  a := power(osn, 20) + power(osn, 30) - 27;
  while a <> 0 do 
  begin
    if a mod 9 = 8 then count += 1;
    a := a div 9;
  end;
  writeln(count);
end.