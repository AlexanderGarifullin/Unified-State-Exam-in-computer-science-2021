﻿{(№ 2570) Напишите программу, которая ищет среди целых чисел, принадлежащих 
числовому отрезку [135743; 135789], числа, имеющие ровно 6 различных делителей. 
В ответе для каждого найденного числа запишите два его наибольших делителя в 
порядке возрастания.}
var i,  d,  j,  md :integer;
begin
  for i := 135743 to 135789 do
    begin
      d := 2;
      for j := 2 to i div 2 do
        if i mod j = 0 then
          begin
            d += 1;
            md := j;
            if d > 6 then break;
          end;
      if d = 6 then writeln (md,' ',i);
    end;
end.