{(№ 3436) (А. Рулин) Рассматривается множество целых чисел, принадлежащих 
числовому отрезку [834567; 1143210]. Найдите числа, нетривиальные делители
которых образуют арифметическую прогрессию с разностью d = 2. В ответе для 
каждого такого числа (в порядке возрастания) запишите сначала само число, а 
потом – его максимальный нетривиальный делитель.}
var
  i,  d1, d2, j, steps: integer;
  fl, time: boolean;

begin
  for i := 834567     to 1143210     do
  begin
    d1 := 0;  d2 := 0;  time := false;  fl := true; steps := 0;
    for j := 2 to i div 2 do
      begin
        if i mod j = 0 then
        begin
          time := true;
          d2 := d1;
          d1 := j;
          if d2 <> 0 then
            if (d2 + 2 <> d1) then
              fl := false;
          steps += 1;    
        end;
        if not (fl) then break;    
      end;  
    if time and fl and (steps > 1) then writeln(i, ' ', d1);  
  end;
end.
