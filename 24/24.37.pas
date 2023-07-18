{(№ 3786) Текстовый файл 24-164.txt состоит не более чем из 10^6 символов и 
содержит только заглавные буквы латинского алфавита (ABC…Z). Текст разбит на 
строки различной длины. Необходимо найти строку, содержащую самую длинную 
цепочку стоящих подряд одинаковых букв. Если таких строк несколько, надо взять 
ту, которая в файле встретилась раньше. Определите, какая буква встречается в 
этой строке чаще всего. Если таких букв несколько, надо взять ту, которая стоит 
раньше в алфавите. Запишите в ответе эту букву, а затем – сколько раз она 
встречается во всем файле.

Пример. Исходный файл:
ZZQABA
ZALAAC
QRAQUT

В этом примере в первой и второй строках наибольшая длина цепочек одинаковых
буквы равна 2 (ZZ в первой строке, AA во второй), в третьей – 1. Берём первую
строку, т.к. она находится в файле раньше. В этой строке чаще других 
встречаются буквы Z и A (по 2 раза), выбираем букву A, т. к. она стоит раньше 
в алфавите. В ответе для этого примера надо записать A6, так как во всех 
строках файла буква A встречается 6 раз.}

var
  f: text;
  s, s2: string;
  i, count, max, maxnow, freq, ln: integer;
  alf: array[65..90] of integer;
  cf: char;

begin
  assign(f, '24-164.txt'); 
  reset(f);max := 0;ln := 0;
  while not eof(f) do
  begin
    ln += 1;
    readln(f, s);count := 1;maxnow := 0;
    for i := 1 to length(s) - 1 do
    begin
      if s[i] = s[i + 1] then
      begin
        count += 1;
        if count > maxnow then 
          maxnow := count;       
      end
      else count := 1;
    end;
    if maxnow > max then 
    begin
      max := maxnow; 
      s2 := s;
    end;  
  end;
  for i := 65 to 90 do alf[i] := 0;
  for i := 1 to length(s2) do
    alf[ord(s2[i])] += 1;
  freq := 0;
  for i := 65 to 90 do
    if alf[i] > freq then
    begin
      cf := chr(i);
      freq := alf[i]
    end;
  freq := 0;
  close(f);
  assign(f, '24-164.txt'); 
  reset(f);
  while not eof(f) do
  begin
    readln(f, s);
    for i := 1 to length(s) do 
      if s[i] = cf then
        freq += 1;
  end;
  writeln(cf, freq);   
  close(f);
end.