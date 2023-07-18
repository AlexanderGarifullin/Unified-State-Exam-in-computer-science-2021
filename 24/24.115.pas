{(№ 2528) (П.Е. Финкель) Текстовый файл 24-1.txt состоит не более чем из 10^6 
символов - заглавных латинских букв и цифр. Определите максимальное число,
состоящее только из чётных цифр.}
var
  s, s2: string;
  i, n, x, y, t: integer;
  f: boolean;

begin
  assign(input, '24-1.txt');
  readln(s);s2 := '';n := 0;
  for i := 1 to length(s) do
  begin
    if (s[i] <= '9') and (s[i] >= '0') then
      s2 += s[i]          
    else if s2 <> '' then 
    begin
      f := true;
      y := StrToInt(s2);t := y;
      while t > 0 do
      begin
        if t mod 10 mod 2 = 1 then f := false;
        t := t div 10;
      end;
      if f then
        if y > n then n := y;
      s2 := '';  
    end;
  end;
  writeln(n);   
end.