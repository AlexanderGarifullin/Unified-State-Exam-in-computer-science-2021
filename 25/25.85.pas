{(№ 2888) Напишите программу, которая ищет среди целых чисел, принадлежащих 
числовому отрезку [5962464; 5962581], простые числа. Выведите все найденные
простые числа в порядке возрастания, слева от каждого числа выведите его номер
 по порядку.}
var count, d, i, j : integer; 
begin
  count := 0;
  for i := 5962464 to 5962581 do 
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