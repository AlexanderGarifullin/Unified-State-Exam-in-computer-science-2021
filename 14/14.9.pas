var c, o, a :BIGinteger;
begin
o := 2;
a :=  power(o,3069) + power(o,1024) - 3;
while a <> 0 do 
  begin
    if a mod 2 = 1 then c += 1;
    a := a div 2;
  end;
  writeln(c);  
end.