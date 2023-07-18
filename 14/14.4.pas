var
  osn, count0, count1, count2, count3, a: BIGinteger;

begin
  count0 := 0; count1 := 0; count2 := 0; count3 := 0;
  osn := 2;
  a := 7 * power(osn, 3000) + power(osn, 1500) - power(osn, 400) - 7 * power(osn, 200) + 35;
  while a > 0 do
  begin
    if a mod 4 = 0 then count0 += 1;
    if a mod 4 = 1 then count1 += 1;
    if a mod 4 = 2 then count2 += 1;
    if a mod 4 = 3 then count3 += 1;
    a := a div 4;
  end;
  writeln(count0, ' ', count1, ' ', count2, ' ', count3);
end.

