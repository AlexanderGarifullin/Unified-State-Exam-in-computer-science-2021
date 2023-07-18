{(№ 2506) В текстовом файле k7.txt находится цепочка из символов латинского алфавита 
A, B, C длиной не более 10^6 символов. Найдите длину самой длинной подцепочки,
состоящей из символов C.}
var s : string;
    i,  c,  m : integer;
begin
  assign(input,'k7.txt');
  readln(s);
  for i := 1 to length(s) do
    if s[i] = 'C' then
      begin
        c += 1;
        if c > m then m := c;
      end
    else c := 0;
  writeln(m);    
end.    