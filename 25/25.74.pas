﻿{(№ 2898) Напишите программу, которая ищет среди целых чисел, принадлежащих
 числовому отрезку [4837177; 4837236], простые числа. Выведите все найденные 
 простые числа в порядке возрастания, слева от каждого числа выведите его 
 номер по порядку.}
 var  count, i, j, d : integer; 
 begin
 count := 0; 
 for i := 4837177 to 4837236 do
    begin
      d := 0;
      for j := 2 to i div 2 do
        if i mod j = 0 then 
          begin
            d += 1;
            break;
          end;
      if d = 0 then 
        begin
          count += 1;
          writeln (count,' ',i);
        end;
    end;
 end.