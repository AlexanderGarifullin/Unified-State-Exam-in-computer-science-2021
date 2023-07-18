{(№ 3528) (А. Кабанов) Текстовый файл 24-153.txt содержит строку из 
заглавных букв A, B, C, D, E, F, всего не более чем из 10^6 символов. 
DD-подстроками назовём последовательности символов A, B, C, E, F, ограниченные 
символами D (граничные символы входят в подстроку). Определите минимальную
длину DD-подстроки. Подстроки, состоящие из двух символов, не учитывать.}
var
  s: string;
  i, c, m, j: integer;

begin
  assign(input, '24-153.txt');
  readln(s);m := 1000000;
  for i := 1 to length(s) do
    if s[i] = 'D' then
    begin
      c := 1;
      for j := i + 1 to length(s) do
        if s[j] <> 'D' then c += 1
        else if s[j] = 'D' then begin c += 1;break; end;
      if (c > 2) and (c < m) then m := c;   
    end;
  writeln(m);      
end.
