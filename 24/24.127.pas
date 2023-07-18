{(№ 2516) (А.М. Кабанов) В текстовом файле k7a-2.txt находится цепочка из символов
латинского алфавита A, B, C, D, E, F. Найдите длину самой длинной подцепочки, 
состоящей из символов A, C, D (в произвольном порядке).}
var s : string;
    i,  m,  c : integer;
begin
  assign(input,'k7a-2.txt');
  readln(s);
  for i := 1 to length(s) do
    if (s[i] = 'A') or (s[i] = 'C') or (s[i] = 'D') then
      begin
        c += 1;
        if c > m then m := c;
      end
    else c := 0;
  writeln(m);    
end.    
 