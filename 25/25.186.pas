{(№ 3437) (А. Рулин) Рассматривается множество целых чисел, принадлежащих 
числовому отрезку [862346; 1056242]. Найдите числа, нетривиальные делители 
которых образуют арифметическую прогрессию с разностью d = 100. В ответе для 
каждого такого числа (в порядке возрастания) запишите сначала само число, а 
потом – его максимальный нетривиальный делитель.}
var
  time, fl: boolean;
  i,  j,  d1, d2, steps: integer;

begin
  for i := 862346 to 1056242 do
  begin
    time := false; fl := true;  d1 := 0;  d2 := 0;  steps := 0;
    for j := 2 to i div 2 do 
    begin
      if i mod j = 0 then
      begin
        d2 := d1;
        d1 := j;
        time := true;
        if d2 <> 0 then
          if (d2  + 100 <> d1) then 
            fl := false;
        steps += 1;    
      end;
      if not (fl) then break;  
    end;
    if fl and time and (steps > 1) then writeln(i, ' ', d1);   
  end;
end.