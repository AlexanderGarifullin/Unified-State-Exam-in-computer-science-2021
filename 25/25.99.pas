{	(№ 2875) (Д.Ф. Муфаззалов) Определите количество составных натуральных чисел 
из диапазона [2; 20000], у которых количество простых собственных делителей
 больше трех.}
 var  count, now, i, j, t:integer;
 begin
  count := 0;
  for i := 2 to 20000 do 
    begin
      t := i; now := 0;
      j := 2 ;
      while t <> 1 do 
        begin
          if t mod j = 0 then 
            begin
              now += 1;
              t := t div j;
            end;
          j += 1;  
        end;
      if now > 3 then count += 1;  
    end;
    writeln(count);
 end.