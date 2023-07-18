{(№ 2525) (П.Е. Финкель) Текстовый файл 24-1.txt состоит не более чем из 10^6
символов - заглавных латинских букв и цифр. Определите максимальное чётное число,
записанное в этом файле.}
var
  s, c: string;
  i, m: integer;

begin
  assign(input, '24-1.txt');
  readln(s);c := '';
  for i := 1 to length(s) do
    if (s[i] >= '0') and (s[i] <= '9') then
      c += s[i]
    else if c <> '' then
    begin
      if (strtoint(c) mod 2 = 0) and (strtoint(c) > m) then m := strtoint(c); 
      c := '';
    end;
  writeln(m);      
end.