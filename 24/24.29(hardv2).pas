{(№ 3439) (Е. Джобс) Текстовый файл 24-j9.txt состоит не более чем из 106
 символов. Симметричной парой называют два одинаковых символа,
 которые расположены на одинаковом удалении от концов строки. Сколько пар 
 символов в строке являются симметричными? Например, в строке adcdeefcba три с
 имметричных пары – aa, cc и ee.
}var
  s: string;
  i, count: longint;

begin
  assign(input, '24-j9 (1).txt');
  readln(s);
  for i := 1 to length(s) div 2 - 1 do 
    if s[length(s) div 2 - i + 1  ] = s[length(s) div 2 + 1 + i] then
      count += 1;
  writeln(count);      
end.