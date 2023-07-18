{(№ 2586) (А.Н. Носкин) Напишите программу, которая ищет среди целых чисел, 
принадлежащих числовому отрезку [2532000; 2532160], простые числа. Найдите все 
простые числа, которые заканчиваются на цифру 7. Выведите их в порядке 
возрастания, слева от каждого числа выведите его номер по порядку.}
function f(n:integer):boolean;
  var s :integer;
  begin
    f := true;
    for s := 2 to round(sqrt(n))do
      if n mod s = 0 then
        begin
          f := false;
          break;
        end;
  end;
var i,  count : integer;
begin
  for i := 2532000 to 2532160 do
    if f(i) and (i mod 10 = 7) then 
      begin
        count += 1;
        writeln(count,' ',i);
      end;
end.