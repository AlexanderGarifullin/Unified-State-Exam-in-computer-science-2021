﻿{(№ 3157) Текстовый файл 24-s2.txt состоит не более чем из 10^6 заглавных
латинских букв. Определите символ, который чаще всего встречается в файле между
буквами X и Z, так что X стоит слева от него, а Z – справа. В ответе запишите
сначала этот символ, а потом сразу (без разделителя) сколько раз он встретился 
между буквами X и Z. Если таких символов несколько, нужно вывести тот, который
стоит раньше в алфавите. Например, в тексте XBZCXXZXBZXDZDD между буквами X и Z 
два раза стоит B, по одному разу – X и D. Для этого текста ответом будет B2.}
var s : string;
    i,  i2, m : integer;
    a : array[65..90] of integer;
begin
  assign(input,'24-s2.txt');
  readln(s);
  for i := 2 to length(s) - 1 do
    if (s[i-1] = 'X') and (s[i+1] = 'Z') then
      a[ord(s[i])] += 1;
  for i := 65 to 90 do
    if (a[i] > m) then
      begin
        m := a[i];
        i2 := i;
      end;
  writeln(chr(i2),m);      
end.