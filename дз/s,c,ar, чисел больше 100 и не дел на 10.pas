program m;

var
  ar: real;
  n, i, count, s, x: integer;

begin
  writeln('Введите количество чисел: ');
  readln(n);
  for i := 1 to n do 
  begin
    writeln('Введите число: ');
    readln(x);
    if (x > 100) and (x mod 10 <> 0) then 
    begin
      count += 1;
      s += x;
    end;
  end;
  if count = 0 then ar:=0
  else ar := s / count;
  writeln('Сумма чисел больше 100 и не делящихся на 10: ', s);
  writeln('Количество чисел больше 100 и не делящихся на 10: ', count);
  writeln('Среднее арифмитическое чисел больше 100 и не делящихся на 10: ', ar);
end.