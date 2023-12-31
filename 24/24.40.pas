﻿{(№ 3783) Текстовый файл 24-s1.txt состоит не более чем из 10^6 символов и
содержит только заглавные буквы латинского алфавита (ABC…Z). Текст разбит на 
строки различной длины. Необходимо найти строку, содержащую наименьшее 
ненулевое количество пар соседних букв, которые стоят в таком же порядке и в
алфавите (например, AB, BC, CD и т.д.). Если таких строк несколько, надо взять 
ту, которая в файле встретилась раньше. Определите, какая буква встречается в 
этой строке чаще всего. Если таких букв несколько, надо взять ту, которая стоит
последней в алфавите. Запишите в ответе эту букву, а затем – сколько раз она
встречается во всем файле.
Пример. Исходный файл:
ZZQABA
ZALMAC
KRAKUT
В этом примере в первой и второй строках по одной подходящей паре (AB и LM), в 
третьей таких пар нет. Берём первую строку, т.к. она находится в файле раньше.
В этой строке чаще других встречаются буквы Z и A (по два раза), выбираем букву
Z, т. к. она позже стоит в алфавите. В ответе для этого примера надо записать 
Z3, так как во всех строках файла буква Z встречается 3 раза.}
var
  a: array[65..90] of integer;
  b: array[65..90] of integer;
  f: text;
  m, n, v, i, i2: integer;
  s, s2: string;

begin
  assign(f, '24-s1.txt');
  reset(f);
  m := 100000000;
  while not eof(f) do
  begin
    n := 0;readln(f, s); 
    for i := 1 to length(s) - 1 do
    begin
      if s[i + 1] = chr(ord(s[i]) + 1) then
        n += 1;
      a[ord(s[i])] += 1;
    end;
    a[ord(s[length(s)])] += 1;
    if (n > 0) and (n < m) then
    begin
      m := n;
      s2 := s;
    end;
  end;
  for i := 1 to length(s2) do
    b[ord(s2[i])] += 1;
  v := 0;  
  for i := 65 to 90 do
    if b[i] >= v then
    begin
      v := b[i];
      i2 := i;
    end;
  writeln(chr(i2), a[i2]);      
end.