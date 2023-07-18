{(№ 3348) (Е. Джобс) Текстовый файл 24-j1.txt состоит не более чем из 10^6 
кириллических символов К, О, Т. Определите максимальное количество подряд идущих
комбинаций КОТ.}
var s : string;
    i,  c,  m:integer;
begin
  assign(input,'24-j1.txt');
  readln(s);  i := 1; c := 0;
  while i <= length(s) do
    begin
      if (s[i] = 'К') and (s[i+1] = 'О') and (s[i+2] = 'Т') then 
        begin
          i += 3;
          c += 1;
          if c > m then m := c;
        end
      else 
        begin
          i += 1;
          c := 0;
        end;
    end;
  writeln(m);    
end.