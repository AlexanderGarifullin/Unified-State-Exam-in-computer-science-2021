var o,a,c:biginteger;
begin
  o := 6;
  a := 5*power(o,14) + power(o,10)-36;
  while a <> 0 do
    begin
      if a mod 6 = 5 then c+=1;
      a := a div 6;
    end;
    writeln(c);
end.