﻿{(№ 2902) Напишите программу, которая ищет среди целых чисел, принадлежащих 
числовому отрезку [2943444; 2943529], простые числа. Выведите все найденные 
простые числа в порядке возрастания, слева от каждого числа выведите его номер 
по порядку.}
VAR k, i, d, j:integer;
BEGIN
  k := 0;
  for i := 2943444 to 2943529 do
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
          k += 1;
          writeln (k,' ',i);
        end;
    end;
END.