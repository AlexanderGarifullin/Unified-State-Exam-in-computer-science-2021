var
  c, a, o: BIGinteger;

begin
  o := 2;
  a := power(o, 512) + power(o, 64) + power(o, 32) - 2;
  while a <> 0 do 
  begin
    if a mod 2 = 0 then c += 1;
    a := a div 2;
  end;
  writeln(c);
end.