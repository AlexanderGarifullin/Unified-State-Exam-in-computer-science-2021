﻿{(№ 3781) Текстовый файл 24-s1.txt состоит не более чем из 10^6 символов и 
содержит только заглавные буквы латинского алфавита (ABC…Z). Текст разбит на 
строки различной длины. Необходимо найти строку, содержащую наименьшее 
количество букв A (если таких строк несколько, надо взять ту, которая в файле
встретилась раньше). Определите, какая буква встречается в этой строке чаще
всего. Если таких букв несколько, надо взять ту, которая стоит последней в 
алфавите. Запишите в ответе эту букву, а затем – сколько раз она встречается 
во всем файле.

Пример. Исходный файл:
ZZQAQ
ZAVLAB
KRAKTU
В этом примере в первой и третьей строках по одной букве A, во второй – две. 
Берём первую строку, т.к. она находится в файле раньше. В этой строке чаще 
других встречаются буквы Z и Q (по два раза), выбираем букву Z, т. к. она позже
стоит в алфавите. В ответе для этого примера надо записать Z3, так как во всех
строках файла буква Z встречается 3 раза.}
var
  f: text;
  s, s2: string;
  c, m, i, i2: integer;
  a: array[65..90] of integer;
  b: array[65..90] of integer;

begin
  assign(f, '24-s1.txt');
  reset(f);m := 10000000;
  while not eof(f) do
  begin
    c := 0;readln(f, s);
    for i := 1 to length(s) do
    begin
      if s[i] = 'A' then
        c += 1;
      a[ord(s[i])] += 1;  
    end;
    if c < m then
    begin
      m := c;
      s2 := s; 
    end;
  end;
  for i := 1 to length(s2) do
    b[ord(s2[i])] += 1;
  m := 0;
  for i := 65 to 90 do
    if b[i] >= m then
    begin
      i2 := i;
      m := b[i];
    end;
  writeln(chr(i2), a[i2]);      
end.