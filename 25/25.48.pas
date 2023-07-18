﻿{(№ 3160) Рассмотрим произвольное натуральное число, представим его всеми 
возможными способами в виде произведения двух натуральных чисел и найдём для 
каждого такого произведения разность сомножителей. Например, для числа 18 
получим: 18 = 18*1 = 9*2 = 6*3, множество разностей содержит числа 17, 7 и 3. 
Подходящей будем называть пару сомножителей, разность между которыми не 
превышает 110. Найдите все натуральные числа, принадлежащие отрезку 
[1000000; 1500000], у которых есть не менее трёх подходящих пар сомножителей. 
В ответе перечислите найденные числа в порядке возрастания, справа от каждого 
запишите наибольший из всех сомножителей, образующих подходящие пары.}
var
  count, i, j, max: longint;
  t: real;

begin
  for i := 500000 to 1000000 do
  begin
    count := 0;
    max := 0;
    t := i;
    for j := 2 to trunc(sqrt(t)) do
      if i mod j = 0 then 
        if (i div j - j ) <= 90 then 
        begin
          count += 1;
          if i div j > max then max := i div j;
        end;
    if count >= 3 then writeln(i, ' ', max);
  end;
end.