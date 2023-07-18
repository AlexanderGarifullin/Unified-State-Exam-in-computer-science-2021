{(№ 2606) Рассматриваются целые числа, принадлежащих числовому отрезку
[238941; 315675], которые представляют собой произведение двух различных
простых делителей. В ответе запишите количество таких чисел и такое из них, 
простые делители которого отличаются друг от друга больше всего. Если чисел 
с наибольшей разностью делителей несколько, запишите в ответе наименьшее из них.}
function f(n: integer): boolean;
var
  s: integer;
begin
  f := true;
  for s := 2 to round(sqrt(n))  do 
    if n mod s = 0 then
    begin
      f := false;
      break;
    end;
end;

var
  dif, min, count, i, p, t, d1, d2, d: integer;
  flag: boolean;

begin
  dif := 0;min := 0;count := 0;
  for i := 238941 to 315675 do
  begin
    d := 2;t := i;p := 1;d1 := 0;d2 := 0;flag := true;
    while (t <> 1) and flag and (d < i div 2) do
    begin
      if t mod d = 0 then
        if f(d) then 
          if f(i div d) then
          begin
            d1 := d;
            d2 := i div d1;
            p := p * d1 * d2;
            flag := false;
          end;
      d += 1;
    end;
    if (round(p) = i) and (d1 <> d2) then
    begin
      if abs(d1 - d2) > dif then 
      begin
        dif := abs(d1 - d2);
        min := i;
      end;
      count += 1;  
    end;
  end;
  writeln(count, ' ', min);    
end.