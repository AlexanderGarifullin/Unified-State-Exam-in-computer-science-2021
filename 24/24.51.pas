﻿{(№ 3438) (Е. Джобс) Текстовый файл 24-j9.txt состоит не более чем из 10^6 
символов английского алфавита. Определите количество палиндромов
(последовательностей, которые читаются в обе стороны одинаково) длиной 
5 символов.}
var
  s: string;
  i, c: integer;

begin
  assign(input, '24-j9.txt');
  readln(s);
  for i := 1 to length(s) - 4 do
    if (s[i] = s[i + 4]) and (s[i + 1] = s[i + 3]) then c += 1;
  writeln(c);  
end.