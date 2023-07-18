{(№ 2593) (К. Амеличев) Среди целых чисел, принадлежащих числовому отрезку 
[2945; 18294], найдите числа, не делящиеся на вторую степень какого-либо числа,
кроме единицы. Ответом будет сумма цифр найденных чисел.}
var
  s,  i,  d,  j,  t: integer;

begin
  s := 0;
  for i := 2945 to 18294 do
  begin
    d := 0;
    for j := 2 to round(sqrt(i)) do 
      if i mod (j * j) = 0 then 
      begin
        d += 1;
        break;
      end;
    if d = 0 then
    begin
      t := i;
      while t <> 0 do
      begin
        s += t mod 10;
        t := t div 10;
      end;
    end;
    writeln(i); 
  end;
  writeln(s);    
end. 