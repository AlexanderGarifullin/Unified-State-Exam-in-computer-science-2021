{	(№ 2526) (П.Е. Финкель) Текстовый файл 24-1.txt состоит не более чем из 10^6
символов - заглавных латинских букв и цифр. Определите минимальное чётное число,
записанное в этом файле.}
var
  s, c: string;
  i, y, m: integer;

begin
  assign(input, '24-1.txt');
  readln(s);c := '';m := 10000000;
  for i := 1 to length(s) do
    if (s[i] >= '0') and (s[i] <= '9') then
      c += s[i]
    else if c <> '' then
    begin
      y := strtoint(c);
      if y mod 2 = 0 then 
        if y < m then 
          m := y;
      c := '';    
    end;
  writeln(m);      
end.