﻿{(№ 2856) (Е. Джобс) Среди целых чисел, принадлежащих числовому отрезку 
[333555; 777999], найдите числа, среди делителей которых есть ровно 35
 двузначных чисел. Для каждого найденного числа запишите в ответе само число, 
 наименьший и наибольший из его двузначных делителей. Так, например, для числа
 36 учитываются только делители 12 и 18.}
 var  i, count , min, j, t : integer;
 begin
  for i := 333555 to  777999 do
    begin
      count := 0;
      for j := 10 to 99 do 
        if i mod j = 0 then 
          begin
            count += 1;
            t := j;
          end;
      if count = 35 then 
        begin
          for j := 10 to 99 do
            if i mod j = 0 then
              begin
                min := j;
                break;
              end;
         writeln(i,' ',min,' ',t);     
        end;
    end;
 end.