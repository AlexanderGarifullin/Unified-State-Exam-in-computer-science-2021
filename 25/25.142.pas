{(№ 2599) Среди целых чисел, принадлежащих числовому отрезку [125697;190234], 
найдите числа, которые представляют собой произведение двух различных простых 
делителей. Запишите в ответе количество таких чисел и максимальное их них.}
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
  count, i, d1, d2, p, d, max: integer;

begin
  count := 0; 
  for i := 125697 to 190234 do
  begin
    d := 2;fl := true;d1 := 0;d2 := 0;p := 1;
    while fl and (d < i div 2) do 
    begin
      if i mod d = 0 then
        if f(d) then
          if f(i div d) then 
          begin
            d1 := d;
            d2 := i div d1;
            p *= d1 * d2;
            fl := false;
          end;
      d += 1;
    end;
    if (round(p) = i) and (d1 <> d2) then
    begin
      count += 1;
      max := i;
    end;
  end;
  writeln(count, ' ', max);   
end.    