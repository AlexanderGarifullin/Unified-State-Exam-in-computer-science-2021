{	(№ 2877) (П.Е. Финкель) Уникальным назовём число, если у него только первые 
две цифры нечётные. Для интервала [57888;74555] найдите количество таких чисел,
которые не делятся на 7, 9, 13, и разность максимального и минимального из них.
В ответе укажите два числа: сначала количество чисел, а потом разность.}
var min, max, i, count : integer;
begin
  min := 100000000;
  max := 0;
  for i := 57888 to 74555 do
    begin
      if (i mod 10 mod 2 = 0) and (i div 10 mod 10 mod 2 = 0) and (i div 100 mod 10 mod 2 = 0) and 
      (i div 1000 mod 10 mod 2 = 1) and (i div 10000 mod 10 mod 2 = 1)  then 
        if (i mod 7 <> 0 ) and (i mod 9 <> 0 ) and (i mod 13 <> 0 ) then
          begin
            count += 1; 
            if i > max then max := i;
            if i < min then min := i;
          end;
    end;
  writeln (count,' ',max - min);  
end.
