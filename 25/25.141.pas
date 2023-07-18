{(№ 2600) Среди целых чисел, принадлежащих числовому отрезку [268312;336492],
найдите числа, которые представляют собой произведение двух различных простых
делителей. Запишите в ответе количество таких чисел и минимальное их них.}
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
  count, min, i, d, t, d1, d2, p: integer;

begin
  count := 0;min := 1000000; 
  for i := 268312 to 336492 do 
  begin
    d := 2;t := i;d1 := 0;d2 := 0;p := 1;fl := true;
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
    if (round(p) = i) and (d1 <> d2) then 
    begin
      count += 1;
      if i < min then min := i;
    end;
  end;
  writeln(count, ' ', min);    
end. 