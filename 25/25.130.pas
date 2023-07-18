{(№ 2611) Рассматриваются целые числа, принадлежащих числовому отрезку 
[236228; 305283], которые представляют собой произведение трёх различных простых
делителей. В ответе запишите количество таких чисел и их среднее арифметическое 
(только целую часть числа).}
function f(n: integer): boolean;
var
  j: integer;
begin
  f := true;
  for j := 2 to n div 2 do
    if n mod j = 0 then
    begin
      f := false;
      break;
    end;
end;

var
  d, count, countdel, t, i: integer;
  p, sum: real;

begin
  sum := 0;count := 0;
  for i := 236228 to 305283 do
  begin
    d := 2;t := i;countdel := 0;p := 1;
    while (t <> 1) and (countdel < 4) and (d < i div 2) and (p <= i) do
    begin
      if t mod d = 0 then 
      begin
        if f(d) then 
        begin
          p *= d;
          countdel += 1;
          t := t div d;
        end;
      end;
      d += 1;
    end;
    if (countdel = 3) and (round(p) = i) then
    begin
      count += 1;
      sum += i;
    end;
    writeln(i);  
  end;
  writeln(count, ' ', trunc(sum / count));    
end.