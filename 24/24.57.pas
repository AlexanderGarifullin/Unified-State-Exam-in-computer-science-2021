﻿{(№ 3363) (В.Н. Шубинкин) Текстовый файл 24-4.txt содержит последовательность
из строчных и заглавных букв английского алфавита и цифр, всего не более 10^6
символов. Возрастающей подпоследовательностью будем называть последовательность
символов, расположенных в порядке увеличения их номера в кодовой таблице 
символов ASCII. Запишите в ответе наибольшую возрастающую подпоследовательность.
Если таких последовательностей несколько, запишите первую из них.}
var s :string;
    i,  m,  c,  x : integer;
begin
  assign(input,'24-4.txt');
  readln(s);
  for i := 1 to length(s) - 1 do
    if s[i] < s[i+1] then
      begin
        c += 1;
        if c > m then
          begin
            m := c;
            x := i + 1;
          end;
      end
    else c := 1; 
  for i := x - m + 1 to x do 
    write(s[i]);
end.