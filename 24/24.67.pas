﻿{(№ 3354) (В.Н. Шубинкин) Текстовый файл 24-4.txt содержит последовательность из
строчных и заглавных букв английского алфавита и цифр, всего не более 10^6 
символов. Убывающей подпоследовательностью будем называть последовательность 
символов, расположенных в порядке уменьшения их номера в кодовой таблице 
символов ASCII. Запишите в ответе наибольшую убывающую подпоследовательность.
Если таких последовательностей несколько, запишите первую из них.}
var
  s: string;
  c, i, i2, m: integer;

begin
  assign(input, '24-4.txt');
  readln(s);c := 1;
  for i := 1 to length(s) - 1 do
    if s[i] > s[i + 1] then
    begin
      c += 1;
      if c > m then 
      begin
        m := c;
        i2 := i + 1;  
      end;  
    end
    else c := 1;
  for i := i2 - m + 1 to i2 do 
    write(s[i]);
end.