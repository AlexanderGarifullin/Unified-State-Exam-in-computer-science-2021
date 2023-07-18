{(№ 2854) Среди целых чисел, принадлежащих числовому отрезку [298435; 363249],
 найдите числа, которые представляют собой произведение двух различных простых 
 делителей. Запишите в ответе количество таких чисел и то из них, которое ближе 
 всего к их среднему арифметическому.}
var
  mindif, s, n, t, d, count,i,o, m: integer;

begin
  n := 0;  mindif := 100000000000;
  for i := 298435 to  363249 do
  begin
    t := i; d := 2; count := 0; s := 0;
    while (t <> 1) and (count < 2) do 
    begin
      if t mod d = 0 then 
      begin
        count += 1;
        t := t div d;
        s += d;
        m := d;
      end;
      d += 1;  
    end;
    if count = 2 then  
    begin
      n += 1;
      if (abs(s div 2 - m) < abs(s div 2 - (s div m))) and (abs(s div 2 - m) < mindif)
        then o := m
      else if  abs(s div 2 - (s div m)) < mindif then  o := s div m;
      
    end;
  end;
  writeln(n, ' ', o);
end.