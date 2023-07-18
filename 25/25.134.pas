{(№ 2607) Среди целых чисел, принадлежащих числовому отрезку [173225; 217437], 
найдите числа, которые представляют собой произведение двух различных простых
делителей, заканчивающихся на одну и ту же цифру. Запишите в ответе количество
таких чисел и минимальное их них.}
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
  count, min, p, d, i, d1, d2, t: integer;
  br: boolean;

begin
  count := 0;min := 300000;
  for i := 173225 to 217437 do
  begin
    d := 2;p := 1;br := true;t := i;
    while (t <> 1) and (d < i div 2) and (br) and (p <= i) do 
    begin
      if t mod d = 0 then
        if f(d) then 
        begin
          d1 := d;
          if f(i div d1) then 
          begin
            d2 := i div d1;
            p := p * d1 * d2;              
          end;
          br := false;  
        end;
      d += 1;
    end;
    if ((d1 mod 10) = (d2 mod 10)) and (round(p) = i) and (d1 <> d2) then
    begin
      count += 1;
      if i < min then min := i;
    end; 
  end;
  writeln(count, ' ', min);    
end.