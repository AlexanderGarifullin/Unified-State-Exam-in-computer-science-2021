﻿{(№ 2871) (Д.Ф. Муфаззалов) Число называется почти совершенным, если оно больше
 суммы своих собственных делителей (то есть всех положительных делителей, 
 отличных от самого́ числа) на единицу. Запишите в ответе сначала количество 
 почти совершенных чисел в диапазоне [2; 20000], а затем – наибольшее такое число.}
 var
 begin
  for i := 2 to 20000 do 
    begin
      t := i; j := 2; s := 0;
      while t <> 1 do 
        begin
          if t mod j = 0 then 
            begin
              t := t div 2;
              s += j;
            end;
          j += 1;  
        end;
      if (s = (i -1 )) then 
        begin
          count += 1;
          max := i;
        end;
    end;
    writeln(count,' ',max);
 end.