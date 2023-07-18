var osn, k1, a:BIGinteger;
begin
  osn := 2;
  a := power(osn,180) + power (osn,300) - 32;
  while a > 0 do 
    begin
      if a mod 4 = 3 then 
        k1 += 1;
        a := a div 4;
    end;
    writeln(k1);
end.