{(№ 2601) Среди целых чисел, принадлежащих числовому отрезку [351627;428763],
найдите числа, которые представляют собой произведение двух различных простых 
делителей. Запишите в ответе количество таких чисел и их среднее арифметическое.
Для среднего арифметического запишите только целую часть числа.}
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
  sum: int64;
  count, p, d, t, d1, d2, i: integer;
  av: real;

begin
  count := 0;sum := 0;
  for i := 351627 to 428763 do
  begin
    t := i;d := 2;p := 1;fl := true;d1 := 0;d2 := 0;
    while (t <> 1) and (d <= i div 2) and fl do 
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
    if (round(p) = i) and (d1 <> d2) then
    begin
      count += 1;
      sum += i;
    end; 
  end;
  av := sum / count;
  writeln(count, ' ', av);
end.  