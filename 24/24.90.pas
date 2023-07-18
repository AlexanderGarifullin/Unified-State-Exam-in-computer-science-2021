{(№ 2553) Текстовый файл 24-s1.txt состоит не более чем из 10^6 заглавных
латинских букв (A..Z). Текст разбит на строки различной длины. Определите
количество строк, в которых буква J встречается чаще, чем буква E.}
var s : string;
    f : text;
    i,  j,  e, c : integer;
begin
  assign(f,'24-s1.txt');
  reset(f);
  while not eof(f) do
    begin
      j := 0; e := 0;
      readln(f,s);
      for i := 1 to length(s) do
        if s[i] = 'J' then j += 1
        else if s[i] = 'E' then e += 1;
      if j > e then c += 1;  
    end;
  writeln(c);   
end.    