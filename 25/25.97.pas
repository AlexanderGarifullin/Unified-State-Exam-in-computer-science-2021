{(№ 2876) (П.Е. Финкель) Уникальным назовём число, если у него только последние 
три цифры нечётные. Для интервала [64444;77563] найдите количество таких чисел, 
которые не делятся на 9, 13, 17, и разность максимального и минимального из них.
В ответе укажите два числа: сначала количество чисел, а потом разность.}
var count, i, min, max : integer;
begin
  count := 0; max := 0; min := 10000000;
  for i := 64444 to 77563 do 
    begin
      if (i mod 10 mod 2 <> 0) and (i div 10 mod 10 mod 2 <> 0) and (i div 100 mod 10 mod 2 <> 0) and
        (i div 1000 mod 10 mod 2 = 0) and (i div 10000 mod 10 mod 2 = 0) then 
          if (i mod 9 <> 0) and (i mod 13 <> 0) and (i mod 17 <> 0) then 
            begin
              count += 1;
              if i > max then max := i;
              if i < min then min := i;
            end;
    end;
  writeln (count,' ',max-min);
end.