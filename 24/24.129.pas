{(№ 2509) (Демовариант 2021 г.) Текстовый файл 24.txt состоит не более чем из 10^6
символов X, Y и Z. Определите максимальное количество идущих подряд символов,
среди которых каждые два соседних различны.}
var s : string;
    i,  c,  m : integer;
begin
  assign(input,'24.txt');
  readln(s);  c := 1;
  for i := 1 to length(s) -1  do
    if (s[i] <> s[i+1]) then
      begin
        c += 1;
        if c > m then m := c;
      end
    else c := 1;
  writeln(m);    
end.    