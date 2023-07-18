{(№ 2557) Текстовый файл 24-s1.txt состоит не более чем из 10^6 заглавных 
латинских букв (A..Z). Текст разбит на строки различной длины. Определите 
количество строк, в которых встречается комбинация F*O, где звёздочка обозначает
любой символ.}
var f : text;
    s : string;
    t : boolean;
    i,  c : integer;
begin
  assign (f,'24-s1.txt');
  reset(f);
  while not eof(f) do
    begin
      readln(f,s);  t := false;
      for i := 1 to length(s) - 2 do
        if (s[i] = 'F') and (s[i+2] = 'O') then
          begin
            t := true;
            break;
          end;
      if t then c += 1;    
    end;
  writeln(c);
end.