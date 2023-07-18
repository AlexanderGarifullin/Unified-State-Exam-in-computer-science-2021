﻿{(№ 3159) Рассмотрим произвольное натуральное число, представим его всеми 
возможными способами в виде произведения двух натуральных чисел и найдём для 
каждого такого произведения разность сомножителей. Например, для числа 18 
получим: 18 = 18*1 = 9*2 = 6*3, множество разностей содержит числа 17, 7 и 3.
Подходящей будем называть пару сомножителей, разность между которыми не 
превышает 90. Найдите все натуральные числа, принадлежащие отрезку 
[500000; 1000000], у которых есть не менее трёх подходящих пар сомножителей.
В ответе перечислите найденные числа в порядке возрастания, справа от каждого 
запишите наибольший из всех сомножителей, образующих подходящие пары.}
var
  i,  c,  j,  m, d: integer;

begin
  for i := 500000 to 1000000 do
  begin
    c := 0; m := 0;
    for j := 2 to round(sqrt(i)) do
      if i mod j = 0 then
      begin
        d := i div j - j;
        if d <= 90 then
        begin
          c += 1;
          if i div j > m then m := i div j;
        end;
      end;
    if c >= 3 then
      writeln(i, ' ', m);
  end;
end. 