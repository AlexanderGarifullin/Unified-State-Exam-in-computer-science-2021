program sq;

var
  i, n: integer;
  ans, s: real;

begin
  writeln('Введите число: ');
  read(s);
  writeln('Введите целое число,показывающее в какую степень возвести предыдущее число: ');
  read(n);
  ans := 1;
  
  for i := 1 to abs(n) do
    ans := ans * s;
    
  if n < 0 then 
    ans := 1 / ans;
    
  if (power(s, n) = ans) then  writeln('Значения равны, ответ будет: ', ans)
  else writeln('Программа работает неправильно');
end.
