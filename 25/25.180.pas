﻿{(№ 2562) (Демовариант 2021 г.). Напишите программу, которая ищет среди целых 
чисел, принадлежащих числовому отрезку [174457; 174505], числа, имеющие ровно 
два различных натуральных делителя, не считая единицы и самого числа. Для 
каждого найденного числа запишите эти два делителя в таблицу на экране с новой 
строки в порядке возрастания произведения этих двух делителей. Делители в строке
таблицы также должны следовать в порядке возрастания.}
var i,  d,  d1, d2,j:integer;
begin
  for i := 174457 to 174505 do
    begin
      d := 0;
      for j := 2 to i div 2 do
        if i mod j = 0 then
          begin
            d += 1;
            d1 := d2;
            d2 := j;
            if d > 2 then break;           
          end;
      if d = 2 then writeln(d1,' ',d2);
    end;
end.