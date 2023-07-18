program dasmda;

var
  s: string;
  i: byte;

begin
  writeln('Введите строку:');
  readln(s);
  writeln('Было: ', s);i := 1;
  while (i <> length(s)) do
  begin
    insert(' ', s, i + 1);
    i += 2;
  end;
  writeln('Стало: ', s);
end.    
