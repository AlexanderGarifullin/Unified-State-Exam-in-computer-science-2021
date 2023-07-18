{(№ 2605) Рассматриваются целые числа, принадлежащих числовому отрезку [153732; 225674],
которые представляют собой произведение двух различных простых делителей.
В ответе запишите количество таких чисел и такое из них, простые делители 
которого отличаются друг от друга меньше всего. Если чисел с наименьшей 
разностью делителей несколько, запишите в ответе наименьшее из них.}
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
  count, dif, min, i, t, p, d1, d2, d: integer;

begin
  count := 0;dif := 1000000;min := 0;
  for i := 153732 to 225674 do 
  begin
    d := 2;t := i;p := 1;d1 := 0;d2 := 0;fl := true;
    while (t <> 1) and fl and (d <= i div 2) do
    begin
      if t mod d = 0 then
        if f(d) then
          if f(i div d) then
          begin
            d1 := d;
            d2 := i div d1;
            p := p * d1 * d2;
            fl := false;
          end;
      d += 1;
    end;
    if (round(p) = i) and (d1 <> d2) then 
    begin
      if abs(d1 - d2) < dif then
      begin
        dif := abs(d1 - d2);
        min := i;
      end;
      count += 1;
    end;
    writeln(i);  
  end;
  writeln(count, ' ', min);    
end. 