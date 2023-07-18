{(№ 2538) (К. Амеличев) Текстовый файл 24-5.txt содержит последовательность из 
символов «(»и «)», всего не более 10^6 символов. Определите максимальное количество
подряд идущих пар скобок «()» в этом файле.}
var s : string;
    i,  c, d, m : integer;
begin
  assign(input,'24-5.txt');
  readln(s); i := 1; c := 0;
  while i < length(s) do
    begin
      if (s[i] = '(') and (s[i+1] = ')') then
        begin
          c += 1;
          d := 2;
          if c > m then m := c;
        end
      else
        begin
          c := 0;
          d := 1;
        end;
      i += d;  
    end;
  writeln(m);    
end.