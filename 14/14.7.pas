var a,o : BIGinteger;
  c0,c1,c2:integer;
begin
  o := 3;
  a := power(o,14)+power(o,8) - 5;
  while a <> 0 do 
    begin
      if a mod 3 = 0  then c0 += 1;
      if a mod 3 = 1  then c1 += 1;
      if a mod 3 = 2 then c2 += 1;
      a := a div 3;
    end;
    writeln(c0,' ',c1,' ',c2);
end.