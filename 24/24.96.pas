{(№ 2547) (Е. Джобс) Текстовый файл 24-j5.txt состоит не более чем из 10^6 
символов S, T, O, C, K. Сколько раз встречается в файле комбинация «KTO»?}
var s :string;
    i, c : integer;
begin
  assign(input,'24-j5.txt');
  readln(s);
  for i := 1 to length(s) -  2do
    if (s[i] = 'K') and  (s[i+1] = 'T') and (s[i+2] = 'O') then c += 1;
  writeln(c);  
end.