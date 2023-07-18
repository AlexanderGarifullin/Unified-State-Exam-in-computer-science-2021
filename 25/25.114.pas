{(№ 2860) (К. Амеличев) Среди целых чисел, принадлежащих числовому отрезку
 [1060; 18813], найдите числа, которые являются простыми. Ответом будет сумма
 найденных чисел.}
 var  i, s, j, d : integer;
 begin
  s := 0;
  for i := 1060 to 18813 do
    begin
      d := 0;
      for j := 2 to i div 2 do 
        if i mod j = 0 then 
          begin
            d += 1;
            break;
          end;
     if d = 0 then s += i;     
    end;
   writeln(s); 
 end.