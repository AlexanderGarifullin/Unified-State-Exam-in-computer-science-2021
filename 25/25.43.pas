{(№ 3440) (Е. Джобс) Для интервала [33333;55555] найти все простые числа,
 сумма цифр которых больше 35. Запишите найденные числа в порядке возрастания,
 справа от каждого – сумму его цифр.}
var
  i, count, s, j: integer;

begin
  for i := 33333 to 55555 do
  begin
    count := 0; s := 0;
    for j := 1 to i do 
      if i mod j = 0 then 
      begin
        count += 1;
        if count > 2 then break;
      end;
    if count = 2 then 
    begin
      s := i div 10000 + i div 1000 mod 10 + i div 100 mod 10 + i div 10 mod 10 +  i mod 10;
    end;
    if s > 35 then writeln(i, ' ', s);  
  end;
end.