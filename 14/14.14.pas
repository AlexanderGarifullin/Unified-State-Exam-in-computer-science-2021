var a,o,i:biginteger;
begin
  o := 2;
  a := power(o,2*625)-power(o,311)+power(o,571)-48;
  while a > 0 do
    begin
    if a mod 4 = 1 then i+=1;
    a := a div 4;
    end;
    writeln(i)
end.