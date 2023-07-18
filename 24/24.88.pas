{(№ 2555) Текстовый файл 24-s1.txt состоит не более чем из 10^6 заглавных
латинских букв (A..Z). Текст разбит на строки различной длины. Определите 
количество строк, в которых буква S встречается столько же раз, сколько и 
буква X.}
var f : text;
    s : string;
    x,  z,  i,  c : integer;
begin
  assign(f,'24-s1.txt');
  reset(f);
  while not eof(f) do
    begin
      x := 0; z := 0; readln(f,s);
      for i := 1 to length(s) do
        if s[i] = 'X' then x += 1
          else if s[i] = 'S' then z += 1;
      if x = z then c += 1;    
    end;
  writeln(c);    
end.