{(№ 3345) (Е. Джобс) Текстовый файл 24-j4.txt состоит не более чем из 10^6 
символов J, O, B, S. Сколько раз встречаются комбинации «BOSS» при этом до и 
после этого слова нет символа «J»? Например, комбинации «JBOSS», «BOSSJ» и
«JBOSSJ» не должны учитываться.}
var s : string;
    c,  i:integer;
begin
  assign(input,'24-j4.txt');
  readln(s);  c := 0;
  for i := 1 to length(s) - 4 do
    begin
    if (i > 1)  then
      if (s[i-1] <> 'J') and (s[i] = 'B') and  (s[i+1] = 'O') and   (s[i+2] = 'S') and  (s[i+3] = 'S') and (s[i+4] <> 'J')  then
        c += 1;
    if i = 1 then 
      if (s[i] = 'B') and  (s[i+1] = 'O') and   (s[i+2] = 'S') and  (s[i+3] = 'S') then c += 1;  
    end;
  if (s[length(s)]='S') and (s[length(s)-1]='S') and  (s[length(s)-2]='O') and (s[length(s)-3]='B') then  c += 1;    
  writeln(c);    
end.