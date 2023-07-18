{(№ 3440) (Е. Джобс) Для интервала [33333;55555] найти все простые числа, сумма
цифр которых больше 35. Запишите найденные числа в порядке возрастания, справа 
от каждого – сумму его цифр.}
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
var i,  sum, t : integer;
begin
  for i := 33333 to 55555 do
    if f(i) then
      begin
        t := i; sum := 0;
        while t <> 0 do
          begin
            sum += t mod 10;
            t := t div 10;
          end;
        if sum > 35 then writeln(i,' ',sum);  
      end;
end.
 