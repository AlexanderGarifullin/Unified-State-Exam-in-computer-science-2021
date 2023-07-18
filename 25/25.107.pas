{(№ 2867) (Д.Ф. Муфаззалов) Число называется полусовершенным, если сумма всех 
или некоторых его собственных делителей (то есть всех положительных делителей,
отличных от самого́ числа) совпадает с самим этим числом. Определите количество
 таких чисел в диапазоне [300; 350] и наибольшее из них.}
var
  count, max, i, j, s, t: integer;

begin
  count := 0;max := 0;
  for i := 300 to 350 do 
  begin
    j := 2;s := 0;t := i;
    while t <> 1 do 
    begin
      if t mod j = 0 then 
      begin
        t := t div j;
        s += j;
        if s = i then 
        begin
          count += 1;
          max := i;
        end;  
      end;
      j += 1;  
    end;
  end;
  writeln(count, ' ', max);
end.