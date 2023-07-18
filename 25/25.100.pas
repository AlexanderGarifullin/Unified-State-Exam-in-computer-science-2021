{(№ 2874) (Д.Ф. Муфаззалов) Найдите в диапазоне [2; 20000] числа, каждое из 
которых имеет максимальное количество простых делителей среди всех таких чисел. 
Выведите минимальное из таких чисел и через пробел количество его простых делителей.}
var now, max, t,c, j, i:integer;
begin
  max := 0;
  for i := 2 to 20000 do 
    begin
      t := i; now :=0;
      j := 2;
      while t <> 1 do 
        begin
          if t mod j = 0 then 
            begin
              now += 1;
              t := t div j;
            end;
          j += 1;  
        end;
      if now > max then 
        begin
          c := i;
          max := now;
        end;
    end;
  writeln (c,' ',max);  
end.