{(№ 2582) Напишите программу, которая ищет среди целых чисел, принадлежащих
числовому отрезку [2532421; 2532491], простые числа. Выведите все найденные 
простые числа в порядке возрастания, слева от каждого числа выведите его номер
по порядку.}
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
  count, i: integer;

begin
  for i := 2532421 to 2532491 do 
    if f(i) then
    begin
      count += 1;
      writeln(count, ' ', i);
    end;  
end.  