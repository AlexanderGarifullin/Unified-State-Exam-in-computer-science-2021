{(№ 2610) Рассматриваются целые числа, принадлежащих числовому отрезку
[105673; 220784], которые представляют собой произведение трёх различных простых 
делителей. В ответе запишите количество таких чисел и максимальное из них.}
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
  count, p, d, countdel, t, i, max: integer;

begin
  count := 0;max := 0;
  for i := 105673 to 220784 do 
  begin
    p := 1;countdel := 0;d := 2;t := i;
    while (t <> 1) and (countdel < 4) and (d < i div 2) and (round(p) <= i) do
    begin
      if t mod d = 0 then 
        if f(d) then 
        begin
          p *= d;
          countdel += 1;
          t := t div d;
        end;
      d += 1;
    end;
    if (countdel = 3) and (round(p) = i) then 
    begin
      max := i;
      count += 1;
    end; 
  end;
  writeln(count, ' ', max);    
end.  