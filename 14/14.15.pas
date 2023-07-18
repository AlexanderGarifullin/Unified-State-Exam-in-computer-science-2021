var a,o,c:biginteger;
begin
  o := 5;
  a := power(o,2019)-power(o,1019)+power(o,2*600)-125;
  while a > 0 do
    begin
      if a mod 5 = 4 then c += 1;
      a := a div 5;
    end;
    writeln(c);
end.