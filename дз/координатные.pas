program hm;

var
  x, y: real;

begin
  writeln('Введите координаты x и y:');
  readln(x, y);
  if (x * x + y * y >= 9) and (x * x + y * y <= 25) and (x >= 0.5) then 
    writeln('Точка принадлежит заданной области.')
  else writeln('Точка не принадлежит заданной области.');
end.
