﻿{(№ 2508) В текстовом файле k8.txt находится цепочка из не более чем 10^6 символов,
в которую могут входить заглавные буквы латинского алфавита A…Z и десятичные цифры.
Найдите длину самой длинной подцепочки, состоящей из одинаковых символов. Для 
каждой цепочки максимальной длины выведите в отдельной строке сначала символ, из 
которого строится эта цепочка, а затем через пробел – длину этой цепочки.}
var
  s: string;
  i, c, m: integer;

begin
  assign(input, 'k8.txt');
  readln(s);c := 1;
  for i := 1 to length(s) - 1 do
    if (s[i] = s[i + 1]) then
    begin
      c += 1;
      if c > m then m := c;
    end
    else c := 1;
  c := 1;
  for i := 1 to length(s) - 1 do
    if (s[i] = s[i + 1]) then
    begin
      c += 1;
      if c = m then writeln(s[i], ' ', m);
    end
    else c := 1;
end.