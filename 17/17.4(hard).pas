{Сколько существует различных шестизначных чисел,записанных в шестнадцатиричной
системе счисления, в записи которых цифры следуют слева направо в строго 
убывающем порядке}
// 100000(16) ~ FFFFFF(16)
// 16**5      ~ 16**6-1
var
  i, x, f, c: integer;

begin
  c := 0;
  for i := round(16 ** 5) to round(16 ** 6 - 1) do
  begin
    x := i;f := 0;
    while x > 15 do
    begin
      if x mod 16 >= x div 16 mod 16 then
      begin
        f := 1;
        break;  
      end;  
      x := x div 16;
    end;
    if f = 0 then 
      c += 1;
  end;
  writeln(c);      
end.