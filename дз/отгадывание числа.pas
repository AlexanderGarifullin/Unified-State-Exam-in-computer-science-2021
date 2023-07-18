program zcx;

var
  flag: boolean;
  count, n, m, x, a: integer;

begin
  writeln('Введите длину промежутка:');
  readln(n);
  x := random(n + 1);
  writeln('Введите количество попыток на отгадывания числа:');
  readln(m);
  flag := true;
  count := 0;
  writeln('Как думаете,какое число загадала программа?');
  while (flag) and (count < m) do
  begin   
    readln(a);
    if a = x then flag := false
    else writeln('Вы не отгадали число!');
    count += 1;
    if count  <  m then writeln('Введите число заново.');
  end;
  if flag = false then writeln('Вы отгадали число ', x, ', вы справились за ', count, ' попыток/попытку/попытки')
  else writeln('Вы не отгадали число ', x, ' за ', m, ' попыток/попытку/попытки');    
end.