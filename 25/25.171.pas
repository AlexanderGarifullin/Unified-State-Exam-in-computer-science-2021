﻿{(№ 2571) (А.Н. Носкин) Напишите программу, которая ищет среди целых чисел,
принадлежащих числовому отрезку [190201; 190220], числа, имеющие ровно 4 
различных делителя. В ответе для каждого найденного числа запишите два его 
наибольших делителя в порядке убывания.}
var i, d, md, j :integer;
begin
  for i := 190201 to 190220 do 
    begin
      d := 2;
      for j := 2 to i div 2 do 
        if i mod j = 0 then
          begin
            d += 1;
            md := j;
            if d > 4 then break;
          end;
       if d = 4 then writeln (i,' ',md);   
    end;
end.