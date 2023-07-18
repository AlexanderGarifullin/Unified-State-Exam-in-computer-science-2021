{(№ 3529) (А. Кабанов) Текстовый файл 24-153.txt содержит строку из заглавных 
букв A, B, C, D, E, F, всего не более чем из 106 символов. AF-подстроками 
назовём последовательности символов A, B, C, D, E, F, ограниченные в начале 
символом A, а в конце символом F (граничные символы входят в подстроку). 
Определите минимальную длину AF-подстроки. Подстроки, состоящие из двух 
символов, не учитывать.}
var
  s: string;
  m, j, d, c, i: integer;
  a: array[1..1000000] of char;

begin
  assign(input, '24-153.txt');
  readln(s);m := 100000;
  for i := 1 to length(s) do
    if s[i] = 'A' then
    begin
      c := 1;
      for j := i + 1 to length(s) do 
        if (s[j] = 'A') then begin c := 100000;break; end 
        else if (s[j] <> 'F') then c += 1
        else if (s[j] = 'F') then begin c += 1;break; end;
      if (c > 2) and (c < m) then m := c; 
    end;
  writeln(m);      
end.