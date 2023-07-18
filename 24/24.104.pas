{(№ 2539) (К. Амеличев) Текстовый файл 24-5.txt содержит последовательность из 
символов «(»и «)», всего не более 10^6 символов. Определите максимальное количество 
подряд идущих открывающих скобок «(» в этом файле.}
var s : string;
    i,  c,  m : integer;
begin
  assign(input,'24-5.txt');
  readln(s);  c := 1;
  for i := 1 to length(s) - 1 do
    if (s[i] = '(') and (s[i] = s[i+1]) then
      begin
        c += 1;
        if c > m then m := c;
      end
    else c := 1;
  writeln (m);    
end.