{(№ 2554) Текстовый файл 24-s1.txt состоит не более чем из 10^6 заглавных
латинских букв (A..Z). Текст разбит на строки различной длины. Определите 
количество строк, в которых буква K встречается чаще, чем буква U.}
var f :text;
    s : string;
    i,k,u,c : integer;
begin
  assign(f,'24-s1.txt');
  reset(f);
  while not eof(f) do
    begin
      readln(f,s);  k := 0; u := 0;
      for i := 1 to length(s) do
        if s[i] = 'K' then k += 1
          else if s[i] ='U' then u += 1;
      if k > u then c += 1;    
    end;
  writeln(c);    
end.