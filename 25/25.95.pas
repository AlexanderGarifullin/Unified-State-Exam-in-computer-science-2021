{(№ 2878) (П.Е. Финкель) Уникальным назовём число, если у него только третья и 
пятая цифры чётные. Для интервала [33333;55555] найдите количество таких чисел, 
которые не делятся на 6, 7, 8 и разность максимального и минимального из них. 
В ответе укажите два числа: сначала количество чисел, а потом разность.}
var i, min, max, count : integer;
begin
  max := 0;
  min := 10000000;
  for i := 33333 to 55555 do 
    begin
      if (i mod 10 mod 2 = 0) and (i div 100 mod 10 mod 2 =0 ) and (i div  10 mod 10 mod 2 = 1) and 
        (i div 1000 mod 10 mod 2 = 1 ) and (i div 10000 mod 10 mod 2 = 1) then 
       if (i mod 7 <> 0)and (i mod 6 <> 0)  and (i mod 8 <> 0) then
        begin
          count += 1;
          if i > max then max := i;
          if i < min then min := i;
        end;
  end;
  writeln (max);
   writeln (min);
 writeln (count,' ',max-min); 
end.