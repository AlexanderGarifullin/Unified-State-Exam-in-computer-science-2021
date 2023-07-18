{	(№ 2510) (А.М. Кабанов) В текстовом файле k7a-1.txt находится цепочка из символов
латинского алфавита A, B, C, D, E. Найдите длину самой длинной подцепочки, состоящей 
из символов A, B или C (в произвольном порядке).}
var s : string;
    i,  m,  c : integer;
begin
  assign(input,'k7a-1.txt');
  readln(s);
  for i := 1 to length(s) do
    if (s[i] = 'A') or (s[i] = 'B') or (s[i] = 'C') then 
      begin
        c+=1;
        if c > m then m := c;
      end
    else c := 0;
  writeln(m);    
end.    