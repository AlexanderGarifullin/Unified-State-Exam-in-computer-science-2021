﻿{(№ 2567) Напишите программу, которая ищет среди целых чисел, принадлежащих 
числовому отрезку [338472; 338494], числа, имеющие ровно 4 различных делителя.
В ответе для каждого найденного числа запишите два его наибольших делителя в 
порядке возрастания.}
var i, j, d, m :integer;
begin
  for i := 338472 to 338494 do
    begin
      d := 2;
      for j := 2 to i div 2 do
        if i mod j = 0 then
          begin
            d += 1;
            m := j;
            if  d > 4 then break;
          end;
      if d = 4 then writeln (m,' ',i);    
    end;
end.