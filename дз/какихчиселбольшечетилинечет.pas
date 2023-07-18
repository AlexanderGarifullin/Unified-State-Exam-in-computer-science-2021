program m;

var
  n, x, countev, countod, i: integer;

begin
  writeln('Введите количество чисел: ');
  readln(n);
  for i := 1 to n do
  begin
    writeln ('Введите число:');
    readln(x);
    if x mod 2 = 0 then countev += 1
    else countod += 1
  end;
  if countev > countod then writeln('Четных чисел больше')
  else if countev = countod then writeln ('Количество четных и нечетных чисел одинаково')
  else writeln('Нечетных чисел больше');
end. 