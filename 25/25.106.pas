{Д.Ф. Муфаззалов) Число называется суперсовершенным, если сумма всех делителей 
суммы всех его делителей равна произведению самого числа на 2. например, число 
16 суперсовершенное. Его делители: 1, 2, 4, 8, 16. Их сумма равна 31. Делители 
числа 31: 1+31=32. 32=16*2. Выведите количество суперсовершенных чисел в 
диапазоне [2; 263000] и наибольшее из них.}
var
  m, count, i, s, t, z, sz, k: integer;

begin
  m := 0;count := 0;
  for i := 2 to 263000 do 
  begin
    t := i;j := 2;s := 0;
    while t <> 1 do 
    begin
      if t mod j = 0 then 
      begin
        t := t div j; 
        s += j;
      end;
    end;
    z := s;k := 2;
    while z <> 1 do 
    begin
      if z mod k = 0 then 
      begin
        z := z div k;
        sz += k;
      end;
      k += 1;  
    end;
    if sz = i * 2 then 
    begin
      count += 1;
      m := i;
    end;
  end;
  writeln(count, ' ', m);
end.