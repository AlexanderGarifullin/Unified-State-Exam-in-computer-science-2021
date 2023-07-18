﻿{(№ 3750) Текстовый файл 24-157.txt состоит не более чем из 10^6 символов и
содержит только заглавные буквы латинского алфавита (ABC…Z). Определите символ,
который чаще всего встречается в файле между двумя одинаковыми символами. 
Например, в тексте CCBAABABCBC есть комбинации ABA, BAB, BCB и CBC. Чаще
всего – 2 раза – между двумя одинаковыми символами стоит B, в ответе для этого 
случая надо написать B2 (без пробелов и других разделителей). Если таких 
символов несколько, выведите тот, который стоит раньше в алфавите.}
var
  s: string; 
  i, i2, m: integer;
  a: array[65..90] of integer;

begin
  assign(input, '24-157.txt');
  readln(s);
  for i := 1 to length(s) - 2 do
    if (s[i] = s[i + 2]) then
      a[ord(s[i + 1])] += 1;        
  m := 0;
  for i := 65 to 90 do
    if a[i] > m then
    begin
      m := a[i];
      i2 := i;
    end;
  writeln(chr(i2), a[i2]);      
end.