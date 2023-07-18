﻿{(№ 3749) Текстовый файл 24-157.txt состоит не более чем из 10^6 символов и 
содержит только заглавные буквы латинского алфавита (ABC…Z). Определите символ,
который чаще всего встречается в файле перед двумя одинаковыми символами. 
Например, в тексте CCBAABABBCCC есть комбинации BAA, ABB, BCC и CCC. Чаще 
всего – 2 раза – перед двумя одинаковыми символами стоит B, в ответе для этого
случая надо написать B2 (без пробелов и других разделителей). Если таких
символов несколько, выведите тот, который стоит раньше в алфавите.}
var
  s: string;
  a: array[65..90] of integer;
  i, i2, m: integer;

begin
  assign(input, '24-157.txt');
  readln(s);
  for i := 1 to length(s) - 2 do
    if (s[i + 1] = s[i + 2]) then
      a[ord(s[i])] += 1;
  m := 0;
  for i := 65 to 90 do
    if a[i] > m then
    begin
      m := a[i];
      i2 := i;
    end;
  writeln(chr(i2), a[i2]);      
end.