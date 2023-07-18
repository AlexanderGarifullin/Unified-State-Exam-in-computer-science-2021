var c, a, osn : BIGinteger;
begin
  c := 0 ; osn := 2 ;
  a := power(osn,3000) + power(osn,600) - power(osn,300);
  while a > 0 do 
    begin
      if a mod 8 = 7 then c += 1;
      a := a div 8;
    end;
  writeln(c);  
end.