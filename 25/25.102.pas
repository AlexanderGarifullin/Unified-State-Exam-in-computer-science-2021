{(№ 2872) (Д.Ф. Муфаззалов) Число называется недостаточным, если оно больше 
суммы своих собственных делителей (то есть всех положительных делителей, 
отличных от самого́ числа). Найдите количество недостаточных чисел из диапазона 
[2; 30000].}
var
  count, i, s, t, j: integer;

begin
  count := 0;
  for i := 2 to 30000 do 
  begin
    t := i;s := 0;j := 2;
    while t <> 1 do 
    begin
      if t mod j = 0 then 
      begin
        s += j;
        t := t div j;
      end;
      j += 1; 
    end;
    if s < i then count += 1; 
  end;
  writeln(count);
end.