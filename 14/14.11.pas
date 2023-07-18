var a,  o,  s:BIGINTEGER;
begin
o := 3;
a:= power(o,14)+power(o,21)-8;
while a >0 do
  begin
    s += a mod 3;
    a := a div 3;
  end;
  writeln(s);
end.