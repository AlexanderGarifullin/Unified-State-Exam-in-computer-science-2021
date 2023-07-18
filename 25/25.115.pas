{(№ 2859) (Е. Джобс) Среди целых чисел, принадлежащих числовому отрезку 
[81234; 134689], найдите числа, имеющие ровно три различных натуральных делителя, 
не считая единицы и самого числа. Для каждого найденного числа запишите в 
таблицу на экране с новой строки сначала наименьший, а потом наибольший из 
этих делителей.}
var
  min, max, i, d, j: integer;

begin
  for i := 81234 to 134689 do
  begin
    d := 0; 
    for j := 2 to i div 2 do 
      if i mod j = 0 then     
      begin
        d += 1;
        max := j;
        if d > 3 then break;
      end;
    if d = 3 then 
    begin
      for j := 2 to i div 2 do 
        if i mod j = 0 then 
        begin
          min := j;
          break;
        end;
      writeln(min, ' ', max);    
    end;
  end;
end.