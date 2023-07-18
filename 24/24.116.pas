{(№ 2527) (П.Е. Финкель) Текстовый файл 24-1.txt состоит не более чем из 10^6 
символов - заглавных латинских букв и цифр. Определите максимальное число,
состоящее только из нечётных цифр.}
var
  s, cur: string;
  f: boolean;
  i, m, t, y: integer;

begin
  assign(input, '24-1.txt');
  readln(s);
  cur := '';m := 0;
  for i := 1 to length(s) do    
    if (s[i] >= '0') and (s[i] <= '9') then
      cur += s[i]
    else  if cur <> '' then 
    begin
      f := true;
      y := strtoint(cur);t := y;
      while (t > 0) and f do
      begin
        if t mod 10 mod 2 = 0 then f := false;
        t := t div 10; 
      end;
      if f then 
        if y > m then m := y;
      cur := '';  
    end;
  writeln(m);
end.