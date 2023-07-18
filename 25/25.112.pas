{(№ 2862) (К. Амеличев) Среди целых чисел, принадлежащих числовому отрезку
 [2948; 20194], найдите числа, которые являются простыми. Ответом будет 
 максимум среди найденных чисел.}
 var  i, d, j, t : integer;
 begin
  for i := 2948 to 20194 do 
    begin
      d := 0;
      for j := 2 to i div 2 do 
        if i mod j = 0 then 
          begin
            d += 1;
            break;
          end;
      if d = 0 then t := i;    
    end;
    writeln(t);
 end.