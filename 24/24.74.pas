{(№ 3347) (Е. Джобс) Текстовый файл 24-j2.txt состоит не более чем из 10^6
символов F, A, I, L. Определите максимальное количество подряд идущих одинаковых букв.}
var s : string;
    c,  i,  m : integer;
begin
  c := 1;
  assign(input,'24-j2.txt');
  readln(s);
  for i := 1 to length(s) -1 do
    if s[i] = s[i+1] then
      begin
        c += 1;
        if c > m then m := c;
      end
    else c := 1;  
  writeln(m);    
end.