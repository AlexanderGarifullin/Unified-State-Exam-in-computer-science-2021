﻿{(№ 2507) В текстовом файле k8.txt находится цепочка из не более чем 10^6 символов,
в которую могут входить заглавные буквы латинского алфавита A…Z и десятичные цифры. 
Найдите длину самой длинной подцепочки, состоящей из одинаковых символов. Выведите 
сначала символ, из которого строится цепочка, а затем через пробел – длину этой 
цепочки. Если таких цепочек (максимальной длины) несколько, выведите информацию
о первой встретившейся цепочке.}
var s : string;
    c,  i,  m : integer;
    x : char;
begin
  assign(input,'k8.txt');
  readln(s); c := 1;
  for i :=  1 to length(s)-1 do
    if (s[i] = s[i+1]) then
      begin
        c += 1;
        if c > m then 
          begin
            m := c;
            x := s[i];
          end;
       end
     else c := 1;
  writeln(x,' ',m);     
end.    