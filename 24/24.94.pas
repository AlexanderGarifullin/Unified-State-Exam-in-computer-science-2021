{(№ 2549) Текстовый файл 24-j5.txt состоит не более чем из 10^6 символов S, T, O,
C, K. Сколько раз встречается в файле комбинация «OKTOS»?}
var s : string;
    c,  i : integer;
begin
  assign(input,'24-j5.txt');
  readln(s);
  for i := 1 to length(s) - 4 do
    if (s[i] ='O') and (s[i+1] ='K') and (s[i+2] ='T') and(s[i+3] ='O') and(s[i+4] ='S') then
      c += 1;
  writeln(c);      
end.
 