{(№ 2522) Текстовый файл k8-10.txt состоит не более чем из 10^6 символов.
Определите максимальное количество идущих подряд символов, среди которых 
каждые два соседних различны.}
var s : string;
    c,  i,  m : integer;
begin
  assign(input,'k8-10.txt');
  readln(s);  c := 1;
  for i := 1 to length(s) - 1 do
    if s[i] <> s[i+1] then
      begin
        c += 1;
        if c > m then m := c;
      end
    else c := 1;
  writeln(m);    
end.