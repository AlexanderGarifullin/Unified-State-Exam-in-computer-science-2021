{(№ 2855) (Е. Джобс) Среди целых чисел, принадлежащих числовому отрезку 
[326496; 649632], найдите числа, у которых количество четных делителей равно 
количеству нечетных делителей. При этом в каждой из таких групп делителей не
 менее 70 элементов. Для каждого найденного числа запишите само число и
 минимальный делитель, больший 1000.}
var i, odd, even, j, t : integer;
begin
  for i := 326496 to 649632 do
    begin
      odd := 1; even := 0;
      if i mod 2 = 0 then even += 1
        else odd += 1;
      for j := 2 to i div 2 do 
        if i mod j = 0 then 
        begin
          if j mod 2 = 0 then even += 1
          else odd += 1;
        end;
        if (odd >= 70) and (odd = even) then 
          begin
            for j := 1001 to i div 2 do 
              if i mod j = 0 then 
                begin
                  t := j;
                  break;
                end;
                writeln(i,' ',t);
          end;
    end;
end.