{(№ 2585) (А.Н. Носкин) Напишите программу, которая ищет среди целых чисел, 
принадлежащих числовому отрезку [2532000; 2532160] первые пять простых чисел. 
Выведите найденные простые числа в порядке возрастания, слева от каждого числа 
выведите его номер по порядку.}
function f(n:integer):boolean;
  var s : integer;
  begin
    f := true;
    for s := 2 to round(sqrt(n)) do 
      if n mod s = 0 then
        begin
          f := false;
          break;
        end;
  end;
var i,  count : integer;
begin
  for i := 2532000 to 2532160 do
    if f(i) then
      begin
        count += 1;
        if count > 5 then break;
        writeln(count,' ',i);
      end;
end.  