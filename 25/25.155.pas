{(№ 2587) (Б.С. Михлин) Напишите программу, которая ищет среди целых чисел, 
принадлежащих числовому отрезку [194441; 196500] простые числа (т.е. числа у
которых только два делителя: 1 и само число), оканчивающиеся на 93. Для каждого
простого числа выведите его порядковый номер (начиная с единицы), 
а затем – само число.}
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
  i,  count: integer;

begin
  for i := 194441 to 196500 do
    if f(i) and (i mod 100 = 93) then 
    begin
      count += 1;
      writeln(count, ' ', i);
    end;
end.
