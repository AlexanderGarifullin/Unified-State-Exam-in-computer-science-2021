﻿{(№ 2575) Напишите программу, которая ищет среди целых чисел, принадлежащих 
числовому отрезку [244143; 1367821], числа, имеющие ровно 5 различных делителей. 
В ответе для каждого найденного числа запишите два его наибольших делителя, не 
равных самому числу, в порядке возрастания.}
var
  i,  j,  d,  d1, d2: integer;

begin
  for i := 244143 to 1367821 do
  begin
    d := 2;
    for j := 2 to i div 2 do 
      if i mod j = 0 then
      begin
        d += 1;
        d1 := d2;
        d2 := d;
        if d > 5 then break;
      end;
    if d = 5 then writeln(d1, ' ', d2);    
  end;
end.