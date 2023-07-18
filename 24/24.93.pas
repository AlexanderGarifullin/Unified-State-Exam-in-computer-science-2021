{(№ 2550) Текстовый файл 24-j5.txt состоит не более чем из 106 символов S, T, O,
C, K. Сколько раз встречается в файле комбинация «SOCKS»?}
var s : string;
    i,  c : integer;
begin
  assign(input,'24-j5.txt');
  readln(s);
  for i := 1 to length(s) - 4do
    if (s[i] = 'S') and (s[i+1] = 'O') and (s[i+2] = 'C') and (s[i+3] = 'K') and
    (s[i+4] = 'S') then c += 1;
  writeln(c);     
end.
 