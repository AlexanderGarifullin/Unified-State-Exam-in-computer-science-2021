{	(№ 3437) (А. Рулин) Рассматривается множество целых чисел, принадлежащих 
числовому отрезку [862346; 1056242]. Найдите числа, нетривиальные делители 
которых образуют арифметическую прогрессию с разностью d = 100. В ответе для
 каждого такого числа (в порядке возрастания) запишите сначала само число,
 а потом – его максимальный нетривиальный делитель.}
var
  i, t, d, pr, s, j, count, zb: integer;

begin
  for i := 862346 to 1056242 do
  begin
    s := 0;d := 0;
    t := i;count := 0;zb := 0;
    for j := 2 to i do
      if (t mod j = 0) then 
      begin
        d := j;count += 1;zb += 1;//writeln('d=', d);
        break;
      end;
    for s := d + 1 to t  do  
      while (t <> 1) and (t mod s = 0) do
      begin
        t := t div s;
        
        pr := d;
        d := s;
        if(d - pr) = 100 then zb += 1;
        count += 1; //writeln('count=', count, 'd=', d, 'pr=', pr,'zb = ',zb); 
      end;
    if (zb = count) and (count <> 1)
      then writeln(i, ' ', d);
  end;
end.