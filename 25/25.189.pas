{(№ 3657) (С.О. Куров) Среди целых чисел, принадлежащих числовому отрезку 
[1000000; 1300000], найдите числа, у которых все цифры меньше тройки, а сумма 
цифр кратна десяти. Среди всех таких чисел необходимо отобрать каждое десятое 
(10-е, 20-е, 30-е и т.д.). Расположите найденные числа в порядке возрастания, 
справа от каждого числа укажите количество его собственных делителей 
(не равных 1 и самому числу).}
var
  count, i, d, s, t,j: integer;
  alert: boolean;

begin
  count := 0;
  for i := 1000000 to 1300000 do  
  begin
    t := i; alert := true;  s := 0; d := 0;
    while (t <> 0) and (alert)  do
    begin
      if t mod 10  >= 3 then alert := false;
      s += t mod 10;
      t := t div 10;
    end;
    if alert and (s mod 10 = 0) then 
    begin
      count += 1;
      if count mod 10 = 0 then 
      begin
        for j := 2 to i div 2 do
          if i mod j = 0 then 
            d += 1;
        writeln(i, ' ', d);    
      end;
    end;
  end;
end.