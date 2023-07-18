{(№ 2864) (К. Амеличев) Среди целых чисел, принадлежащих числовому отрезку 
[3661; 33625], найдите числа, имеющие ровно один натуральный делитель, не 
считая единицы и самого числа. Ответом будет количество найденных чисел.}
var
  i, count, d, j: integer;

begin
  for i := 3661 to 33625 do 
  begin
    d := 0;
    for j := 2 to i div 2 do 
      if i mod j = 0 then 
      begin
        d += 1;
        if d > 1 then break;
      end;
    if d = 1 then count += 1;  
  end;
  writeln(count);
end.