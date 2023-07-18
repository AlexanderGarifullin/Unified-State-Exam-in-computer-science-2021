{(№ 2551) Текстовый файл 24-j5.txt состоит не более чем из 10^6 символов S, T, 
O, C, K. Сколько раз встречается в файле комбинация «SOCKOS»?}
var
  s: string;
  c, i: integer;

begin
  assign(input, '24-j5.txt');
  readln(s);
  for i := 1 to length(s)-5 do
    if (s[i] = 'S') and (s[i + 1] = 'O') and (s[i + 2] = 'C') and (s[i + 3] = 'K') and 
    (s[i + 4] = 'O') and (s[i+5] = 'S') then
      c += 1;
  writeln(c);   
end.