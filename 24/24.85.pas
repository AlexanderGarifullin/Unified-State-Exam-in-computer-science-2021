{(№ 2558) Текстовый файл 24-s1.txt состоит не более чем из 10^6 заглавных 
латинских букв (A..Z). Текст разбит на строки различной длины. Определите 
количество строк, в которых встречается комбинация A*R, где звёздочка обозначает
любой символ.}
var
  f: text;
  s: string;
  i, c: integer;
  t: boolean;

begin
  assign(f, '24-s1.txt');
  reset(f);
  while not eof(f) do
  begin
    readln(f, s);t := false;
    for i := 1 to length(s) - 2 do 
      if (s[i] = 'A') and (s[i + 2] = 'R') then
      begin
        t := true;
        break;
      end;
    if t then c += 1;    
  end;
  writeln(c);    
end.