﻿{(№ 2535) (В.Н. Шубинкин) Текстовый файл 24.txt состоит не более чем из 10^6 
символов - заглавных латинских букв и цифр. Убывающей подпоследовательностью 
будем называть последовательность символов, расположенных в порядке уменьшения
их номера в кодовой таблице символов ASCII. Найдите наибольшую убывающую 
подпоследовательность в этом файле, запишите в ответе номер символа в файле,
с которого она начинается (нумерация символов начинается с 1). Если таких 
последовательностей несколько, используйте первую из них.}
var
  s: string;
  c, i, m, i2: integer;

begin
  assign(input, '24.txt');
  readln(s);c := 1;
  for i := 1 to length(s) - 1 do
    if (s[i] > s[i + 1]) then
    begin
      c += 1;
      if c > m then
      begin
        m := c;
        i2 := i + 1;
      end;
    end
    else c := 1;
  writeln(i2 - m + 1);    
end.