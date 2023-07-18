{(№ 3435) (А. Рулин) Рассматривается множество целых чисел, принадлежащих 
числовому отрезку [854321; 1087654]. Найдите числа, нетривиальные делители 
которых образуют арифметическую прогрессию с разностью d = 10. В ответе для
каждого такого числа (в порядке возрастания) запишите сначала само число, 
а потом – его минимальный нетривиальный делитель.}
var
  fl, time: boolean;
  i,  md, j,  d1, d2, steps: integer;

begin
  for i := 854321 to 1087654 do
  begin
    md := 1087654;  fl := true; time := false;  d1 := 0;  d2 := 0;  steps := 0;
    for j := 2 to i div 2  do 
      if (i mod j = 0)  then
      begin
        time := true;
        d2 := d1;
        d1 := j;
        if j < md then md := j;
        if (d2 <> 0) then
          if (d2 <> d1 - 10) then
            fl := false; 
        steps += 1;
        if not (fl) then break; 
      end;
    if fl and time and (steps > 1) then writeln(i, ' ', md); 
  end;
end.