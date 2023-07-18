var osn, k1, a:BIGinteger;
begin
  osn := 2;
  a := power(osn,3000) + power (osn,1000) - 3;
  while a > 0 do 
    begin
      if a mod 2 = 1 then 
        k1 += 1;
        a := a div 2;
    end;
    writeln(k1);
end.