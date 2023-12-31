﻿{(№ 3367) (В.Н. Шубинкин) Текстовый файл 24-3.txt содержит последовательность
из строчных и заглавных букв английского алфавита и цифр, всего не более 10^6 
символов. Возрастающей подпоследовательностью будем называть последовательность
символов, расположенных в порядке увеличения их номера в кодовой таблице 
символов ASCII. Определите длину наибольшей возрастающей подпоследовательности.}
var
  s: string;
  i, c, m: integer;

begin
  assign(input, '24-3.txt');
  readln(s);c := 1;
  for i := 1 to length(s) - 1 do
    if s[i] < s[i + 1] then
    begin
      c += 1;
      if c > m then m := c;
    end
    else c := 1;  
  writeln(m);    
end.