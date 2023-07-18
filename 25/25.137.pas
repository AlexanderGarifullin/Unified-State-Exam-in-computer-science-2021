{(№ 2604) Рассматриваются целые числа, принадлежащих числовому отрезку 
[631632; 684934], которые представляют собой произведение двух различных простых
делителей. Найдите такое из этих чисел, у которого два простых делителя больше 
всего отличаются друг от друга. В ответе запишите простые делители этого числа 
в порядке возрастания. Если подходящих чисел несколько, запишите в ответе
делители наименьшего из них.}
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
  dif, i, d, t, p, d1, d2, ans1, ans2: integer;

begin
  dif := 0;
  for i := 631632 to 684934 do
  begin
    d := 2;t := i;p := 1;d1 := 0;d2 := 0;fl := true;
    while (t <> 1 ) and fl and (p <= i) and (d <= i div 2) do 
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
    if round(p) = i then
      if abs(d1 - d2) > dif then 
      begin
        ans1 := d1;ans2 := d2;
        dif := abs(d1 - d2);
      end;
  end;
  writeln(ans1, ' ', ans2);
end.  