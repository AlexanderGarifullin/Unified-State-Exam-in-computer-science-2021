{(№ 2602) Среди целых чисел, принадлежащих числовому отрезку [412567; 473265], 
найдите числа, которые представляют собой произведение двух различных простых 
делителей. Запишите в ответе количество таких чисел и то из них, которое ближе
всего к их среднему арифметическому.}
function f(n: integer): boolean;
var
  s: integer;
begin
  f := true;
  for s := 2 to round(sqrt(n)) do 
    if n mod s = 0 then
    begin
      f := false;
      break;
    end;
end;

var
  fl: boolean;
  a: array[1..12593] of integer;
  i, count, av, p, d1, d2, t, d, dif, ans: integer;
  sum: int64;

begin
  count := 0;av := 0;
  for i := 412567 to 473265 do
  begin
    t := i;d1 := 0;d2 := 0;d := 2;p := 1;fl := true;
    while (t <> 1) and fl and (d <= i div 2) do 
    begin
      if t mod d = 0 then 
        if f(d) then
          if f(i div d) then
          begin
            d1 := d;
            d2 := i div d;
            p *= d1 * d2;
            fl := false;
          end;
      d += 1;
    end;
    if (round(i) = i) and (d1 <> d2) then
    begin
      count += 1;
      a[count] := i;
      sum += a[count];
    end;
  end;
  av := round(sum / count);
  dif := 10000098;
  for i := 1 to 12593  do 
    if abs(av - a[i]) < dif then 
    begin
      ans := a[i];
      dif := abs(av - a[i]);
    end;
  writeln(count, ' ', ans);
end.