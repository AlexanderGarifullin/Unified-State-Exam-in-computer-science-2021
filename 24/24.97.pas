{(№ 2546) (Е. Джобс) Текстовый файл 24-j5.txt состоит не более чем из 10^6 
символов S, T, O, C, K. Определите максимальное количество подряд идущих комбинаций «KOT».}
var
  s: string; 
  c, m, i, d: integer;

begin
  assign(input, '24-j5.txt');
  readln(s);c := 0;m := 0;i := 1;
  while i <= length(s)   do
  begin
    if (s[i] = 'K') and (s[i + 1] = 'O') and (s[i + 2] = 'T') then
    begin
      c += 1;
      d := 3;
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