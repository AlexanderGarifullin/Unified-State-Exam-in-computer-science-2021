{(№ 2556) Текстовый файл 24-s1.txt состоит не более чем из 10^6 заглавных 
латинских букв (A..Z). Текст разбит на строки различной длины. Определите 
количество строк, в которых комбинация YZ встречается больше одного раза.}
var f : text;
    s : string;
    x,  i,c : integer;
begin
  assign(f,'24-s1.txt');
  reset(f);
  while not eof(f) do
    begin
      x := 0; readln(f,s);
      for i := 1 to length(s) - 1 do
        if (s[i] = 'Y') and (s[i+1]='Z') then
          begin
            x += 1;
            if x > 1 then break;
          end;
      if x > 1 then c += 1;    
    end;
  writeln(c);    
end.