{(№ 2603) Рассматриваются целые числа, принадлежащих числовому отрезку 
[523456; 578925], которые представляют собой произведение двух различных простых
делителей. Найдите такое из этих чисел, у которого два простых делителя меньше
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
  flag: boolean;
  dif, d1, d2, ans1, ans2, i, d, p, t: integer;

begin
  dif := 10000000;  
  for i := 523456 to 578925 do
  begin
    t := i;d := 2;d1 := 0;d2 := 0;p := 1;flag := true;
    while (t <> 1 ) and flag and (d <= i div 2) do
    begin
      if t mod d = 0 then
        if f(d) then
          if f(i div d) then 
          begin
            d1 := d;
            d2 := i div d;
            p *= d1 * d2;
            flag := false;
          end;
      d += 1;
    end;
    if (round(p) = i) and (d1 <> d2) then 
      if abs(d1 - d2) < dif then
      begin
        dif := abs(d1 - d2);
        ans1 := d1;
        ans2 := d2;
      end;     
  end;
  writeln(ans1, ' ', ans2);    
end.  
