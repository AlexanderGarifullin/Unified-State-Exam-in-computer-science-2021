{(№ 2537) (К. Амеличев) Текстовый файл 24-5.txt содержит последовательность из 
символов «(»и «)», всего не более 10^6 символов. Определите количество пар скобок
«()» в этом файле.}
var s : string;
    i,  c:integer;
begin
  assign(input,'24-5.txt');
  readln(s);
  for i := 1 to length(s) - 1 do
    if (s[i] ='(') and (s[i+1] = ')') then
      c += 1;
  writeln(c);    
end.
 