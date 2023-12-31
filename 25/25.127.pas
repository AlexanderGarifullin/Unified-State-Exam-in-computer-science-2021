﻿{(№ 2614) Назовём нетривиальным делителем натурального числа его делитель,
 не равный единице и самому числу. Найдите все натуральные числа, принадлежащие
 отрезку [1523467; 4157812] и имеющие ровно три нетривиальных делителя. Для 
 каждого найденного числа запишите в ответе два числа: само число и его
 наибольший нетривиальный делитель. Найденные числа расположите в порядке возрастания.}
var
  t, d, j, i: integer;

procedure sq(i: integer);
var
  d, j: integer;
begin
  d := 0;
  for j := 2 to i div 2 do
    if i mod j = 0 then
    begin
      d += 1;
      t := j;
      if d > 3 then break;
    end;
  if d = 3 then writeln(i, ' ', t);
end;

begin
  for i := 1523467 to 4157812 do
    sq(i);
end. 