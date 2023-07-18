var o,a,s:biginteger;
begin
  o := 7;
  a := 6*power(o,3*1156)-5*power(o,2*1147)+4*power(o,1153)-875;
  while a > 0 do
    begin
      s += a mod 7;
      a := a div 7;
    end;
    writeln(s);
end.