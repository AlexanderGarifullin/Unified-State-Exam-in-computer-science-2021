{(№ 2520) (А.М. Кабанов) В текстовом файле k7a-6.txt находится цепочка из символов 
латинского алфавита A, B, C, D, E, F. Найдите длину самой длинной подцепочки, не 
содержащей гласных букв.}
var s : string;
    i,  m, c :integer;
begin
  assign(input,'k7a-6.txt');
  readln(s); c := 0;
  for i := 1 to length(s) do
    if (s[i] <> 'A') and (s[i] <> 'E') then
      begin
        c += 1;
        if c > m then m := c;
      end
    else c := 0;
  writeln(m);    
end.
