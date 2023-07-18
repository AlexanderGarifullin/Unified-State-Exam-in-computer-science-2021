{(№ 2518) (А.М. Кабанов) В текстовом файле k7a-4.txt находится цепочка из 
символов латинского алфавита A, B, C, D, E, F. Найдите длину самой длинной 
подцепочки, не содержащей символа D.}
var s : string;
    c,  i,  m:integer;
begin
  assign(input,'k7a-4.txt');  
  readln(s); c := 0;
  for i := 1 to length(s) do
    if (s[i] <> 'D') then 
      begin
        c += 1;
        if c > m then m := c;
      end
    else c := 0;
  writeln(m);    
end.