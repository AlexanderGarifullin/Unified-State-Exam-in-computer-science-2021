{(№ 2597) (К. Амеличев) Среди целых чисел, принадлежащих числовому отрезку 
[3159; 31584], найдите числа, которые являются простыми.
Ответом будет сумма цифр найденных чисел.}
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
  sum, i, t: integer;

begin
  sum := 0;
  for i := 3159 to 31584 do
    if f(i) then 
    begin
      t := i;
      while t <> 0 do 
      begin
        sum += t mod 10;
        t := t div 10;
      end;
    end;
  writeln(sum);      
end.