{(№ 2517) (А.М. Кабанов) В текстовом файле k7a-3.txt находится цепочка из символов 
латинского алфавита A, B, C, D, E, F. Найдите длину самой длинной подцепочки, 
состоящей из символов A, B, E, F (в произвольном порядке).}
var
  s: string;
  i, c, m: integer;

begin
  assign(input, 'k7a-3.txt');
  readln(s);c := 0;
  for i := 1 to length(s) do
    if (s[i] <> 'D') and (s[i] <> 'C') then
    begin
      c += 1;
      if c > m then m := c;
    end
    else c := 0;
  writeln(m);    
end.