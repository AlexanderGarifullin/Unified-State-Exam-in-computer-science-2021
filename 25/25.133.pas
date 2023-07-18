{(№ 2608) Среди целых чисел, принадлежащих числовому отрезку [237981; 309876], 
найдите числа, которые представляют собой произведение двух различных простых 
делителей, заканчивающихся на одну и ту же цифру. Запишите в ответе количество
таких чисел и максимальное их них.}
function f(n: integer): boolean;
var
  s: integer;
begin
  f := true;
  for s := 2 to n div 2 do 
    if n mod s = 0 then
    begin
      f := false;
      break;
    end;
end;

var
  d1, d2, max, count, p, d, i, t: integer;
  fl: boolean;

begin
  d1 := 0;d2 := 0;
  count := 0;max := 0;
  for i := 237981 to 309876 do 
  begin
    t := i;d := 2;p := 1;fl := true;
    while (t <> 1) and (d < i div 2) and (p <= i) and fl do 
    begin
      if t mod d = 0 then
        if f(d) then 
        begin
          d1 := d;
          if f(i div d1) then 
          begin
            d2 := i div d;
            p := p * d1 * d2;
          end;
          fl := false;
        end;
      d += 1;
    end;
    if ((d1 mod 10) = (d2 mod 10)) and (round(p) = i) and (d1 <> d2) then 
    begin
      max := i;
      count += 1;
    end;   
  end;
  writeln(count, ' ', max);    
end.