{(№ 2544) (Е. Джобс) Текстовый файл 24-j5.txt состоит не более чем из 10^6 
символов S, T, O, C, K. Сколько раз встречается комбинация «OCK», не являющаяся
при этом частью комбинации «STOCK».}
var
  s: string;
  i, c, d: integer;

begin
  assign(input, '24-j5.txt');
  readln(s);
  for i := 1 to length(s) - 2 do 
    if (s[i] = 'O') and (s[i + 1] = 'C') and (s[i + 2] = 'K') then c += 1;
  for i := 1 to length(s) - 2 do 
    if (s[i] = 'S') and (s[i + 1] = 'T') and (s[i + 2] = 'O') and (s[i + 3] = 'C') and (s[i + 4] = 'K') then d += 1;  
  writeln(c - d);    
end.
