program german;

var
  t, t1, t2, t3, t4: boolean;

begin
  writeln('Зритель купил билет на текущий сеанс?');
  readln(t1);
  writeln('Зритель платит за данный сеанс прямо через данный автомат контроллер?');
  readln(t2); 
  writeln('Возраст зрителя больше минимально допустимого на данный фильм?');
  readln(t3);
  writeln('Зритель - работник данного кинотеатра?');
  readln(t4);
  t := ((t1 xor t2) and t3) xor (t4 and t3);
  if t then writeln('Зритель попадет на сеанс.')
  else writeln('Зритель не попадет на сеанс')
end.