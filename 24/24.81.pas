﻿{(№ 2716) (Е. Джобс) Текстовый файл 24-j8.txt состоит не более чем из 10^6
десятичных цифр. Найдите максимальную длину последовательности, каждые две 
соседние цифры в которой в сумме дают значение не меньшее 10. Например, в 
последовательности 1567543853 есть две такие последовательности: 5675 и 385. 
В качестве ответа укажите максимальную длину найденной последовательности.}
var s :string;
    c,  m,  i: integer;
begin
  assign(input,'24-j8.txt');
  readln(s);  c := 1;
  for i := 2 to length(s) - 1 do
    if strtoint(s[i-1]) + strtoint(s[i]) >= 10 then
      begin
        c += 1;
        if c > m then m := c;
      end
    else c := 1;
  writeln(m)    
end.