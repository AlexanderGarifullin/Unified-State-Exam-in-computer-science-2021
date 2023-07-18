var o,c0,c5,a,i:biginteger;
begin
  o := 6;
  a := 5*power(o,(3*1156))-4*power(o,(2*1147))+power(o,1153)-875;
  while a > 0 do
   begin
    if a mod 6 = 0 then c0 += 1;
    if a mod 6 = 5 then c5 += 1;
    a := a div 6;
   end;
   writeln(c5-c0);
end.