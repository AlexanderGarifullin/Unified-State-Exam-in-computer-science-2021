﻿{(№ 2615) Назовём нетривиальным делителем натурального числа его делитель, не 
равный единице и самому числу. Найдите все натуральные числа, принадлежащие 
отрезку [525784203; 728943762] и имеющие ровно три нетривиальных делителя. 
Для каждого найденного числа запишите в ответе два числа: само число и его
 наибольший нетривиальный делитель. Найденные числа расположите в порядке
 возрастания.}
var
  i, d, j, t: integer;

begin
  for i := 525784203 to 728943762 do
  begin
    d := 0;
    for j := 2 to i div 2 do
      if i mod j = 0 then 
      begin
        t := j;
        d += 1;
        if d > 3 then break;
      end;
    if d = 3 then writeln(i, ' ', t);    
  end;
end.