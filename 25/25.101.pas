{(№ 2873) (Д.Ф. Муфаззалов) Число называется избыточным, если оно меньше суммы
 своих собственных делителей (то есть всех положительных делителей, отличных от 
 самого́ числа). Определите количество избыточных чисел из диапазона [2; 20000].}
var
  count, s, i, j, t: integer;

begin
  count := 0;
  for i := 2 to 200000 do 
  begin
    t := i;s := 0;
    j := 2;
    while t <> 1 do 
    begin
      if t mod j = 0 then
      begin
        s += j;
        t := t div j;
      end;
      j += 1;
    end;
    if s > i then count += 1;  
  end;
  writeln(count);
end.