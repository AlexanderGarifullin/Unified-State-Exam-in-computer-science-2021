﻿{(№ 2861) (К. Амеличев) Среди целых чисел, принадлежащих числовому отрезку 
[3594; 21891], найдите числа, имеющие ровно два различных натуральных делителя,
 не считая единицы и самого числа. Ответом будет максимум среди найденных чисел.}
 var  i, d, j, t : integer;
 begin
  for i := 3594 to 21891 do
    begin
      d := 0;
      for j := 2 to i div 2 do 
        if i mod j = 0 then
          begin
            d += 1;
            if d >2 then break;
          end;
       if d = 2 then t := i;   
    end;
    writeln(t);
 end.