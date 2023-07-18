{(№ 3530) (А. Кабанов) Текстовый файл 24-153.txt содержит строку из заглавных 
букв A, B, C, D, E, F, всего не более чем из 10^6 символов. Текстовый файл 
24-153.txt содержит строку из заглавных букв A, B, C, D, E, F, всего не более 
10^6 символов. AF-подстроками назовём непустые последовательности идущих подряд
символов A, B, C, D, E, F, ограниченные в начале символом A, а в конце
символом F (граничные символы входят в подстроку). Определите количество
AF-подстрок длиной от 7 до 10 символов.}
var
  s: string;
  i, c: integer;

begin
  assign(input, '24-153.txt');
  readln(s);
  for i := 1 to length(s) do
  begin
    if (i + 6 <= length(s)) then 
      if (s[i] = 'A') and (s[i + 6] = 'F') then c += 1;
    if (i + 7 <= length(s)) then 
      if (s[i] = 'A') and (s[i + 7] = 'F') then c += 1;
    if (i + 8 <= length(s)) then 
      if (s[i] = 'A') and (s[i + 8] = 'F') then c += 1;
    if (i + 9 <= length(s)) then 
      if (s[i] = 'A') and (s[i + 9] = 'F') then c += 1;
  end;
  writeln(c);    
end.