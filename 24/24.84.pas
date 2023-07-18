{(№ 2559) Текстовый файл 24-s1.txt состоит не более чем из 10^6 заглавных 
латинских букв (A..Z). Текст разбит на строки различной длины. Определите 
количество строк, в которых встречается комбинация Z*RO, где звёздочка 
обозначает любой символ.}
var f : text;
    s : string;
    fl : boolean;
    i,  c : integer;
begin
  assign(f,'24-s1.txt');
  reset(f);
  while not eof(f) do
    begin
      readln(f,s); fl := false;
      for i := 1 to length(s) - 3 do
        if (s[i] = 'Z') and (s[i+2] = 'R') and (s[i+3] = 'O') then
          begin
            fl := true;
            break;
          end;
      if fl then c += 1;    
    end;
  writeln(c);
end.
