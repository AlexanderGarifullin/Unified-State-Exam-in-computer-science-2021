{(№ 2594) (К. Амеличев) Среди целых чисел, принадлежащих числовому отрезку
[2031; 14312], найдите числа, которые не содержат цифру 2, если записать их в 
системе счисления с основанием 11. Ответом будет максимум среди найденных 
чисел.}
function f(n: integer): boolean;
var
  fl: boolean;
  t: integer;
begin
  f := true;fl := true;t := n; 
  while (t <> 0) and fl do 
  begin
    if t mod 11 = 2 then 
    begin
      fl := false;
      f := false;
    end;
    t := t div 11;
  end;
end;

var
  max, i: integer;

begin
  max := 0;
  for i := 2031 to 14312 do
    if f(i) then max := i;
  writeln(max);    
end.