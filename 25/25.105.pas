{(Д.Ф. Муфаззалов) Найдите в диапазоне [2; 10000000] числа, каждое из которых
 имеет максимальное количество простых делителей среди всех чисел этого отрезка. 
 Выведите минимальное из найденных чисел и через пробел количество его простых делителей.}
var
  max, count, naim, i, t, j, now: integer;

begin
  max := 0;count := 0;naim := 100000000000000;
  for i := 2 to 10000000 do  
  begin
    now := 0;
    t := i;j := 2;
    while (t <> 1) do 
    begin
      if t mod j = 0 then 
      begin
        t := t div j;
        now += 1;
      end;
      j += 1;
    end;
    if now >= max then 
    begin
      if naim < i then naim := i;
      count += 1;
    end;
  end;
  writeln(naim, ' ', count);
end.