{(№ 2563) Напишите программу, которая ищет среди целых чисел, принадлежащих 
числовому отрезку [3532000; 3532160], простые числа. Выведите все найденные 
простые числа в порядке возрастания, слева от каждого числа выведите его номер 
по порядку.}
function f(n:integer):boolean;
  var s :integer;
  begin
    f :=  true;
    for s := 2 to round(sqrt(n)) do
      if n mod s = 0 then
        begin
          f := false;
          break;
        end;
  end;
var i,  count : integer;
begin
  for i := 3532000 to 3532160 do
    if f(i) then   
      begin
        count += 1;
        writeln(count,' ',i);
      end;
end.