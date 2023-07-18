{(№ 3438) (Е. Джобс) Текстовый файл 24-j9.txt состоит не более чем из 106
 символов английского алфавита. Определите количество палиндромов 
 (последовательностей, которые читаются в обе стороны одинаково) 
 длиной 5 символов.}
var
  s: string;
  i, count: integer;

begin
  assign(input, '24-j9 (3).txt');
  readln(s);
  for i := 5 to length(s) do
    if (s[i] = s[i - 4]) and (s[i - 1] = s[i - 3]) then count += 1;  
  writeln(count);
end.