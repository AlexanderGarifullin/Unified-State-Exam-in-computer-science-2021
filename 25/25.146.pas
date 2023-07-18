{(№ 2595) (К. Амеличев) Среди целых чисел, принадлежащих числовому отрезку 
[4099; 26985], найдите числа, имеющие ровно один натуральный делитель, не считая 
единицы и самого числа. В ответе запишите два числа: сначала количество найденных
чисел, а затем сумму цифр этих чисел.}
var
  s, count, i, j, t, d: integer;

begin
  s := 0;count := 0;
  for i := 4099 to 26985 do
  begin
    d := 0;
    for j := 2 to i div 2 do 
      if i mod j = 0 then
      begin
        d += 1;
        if d > 1 then break; 
      end;
    if d = 1 then
    begin
      count += 1;
      t := i;
      while t <> 0 do 
      begin
        s += t mod 10;
        t := t div 10;
      end;
    end;
  end;
  writeln(count, ' ', s);    
end.