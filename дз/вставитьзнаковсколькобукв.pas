program mca;

var
  s: string;
  count, i: byte;

begin
  writeln('Введите строку');
  readln(s); count := 0;
  for i := 1 to length(s) do 
    if ((s[i] >= 'A') and (s[i] <= 'Z')) then count += 1
    else if ((s[i] >= 'a') and (s[i] <= 'z')) then count += 1
    else if ((s[i] >= 'А') and (s[i] <= 'Я')) then count += 1 
    else if ((s[i] >= 'а') and (s[i] <= 'я')) then count += 1
    else if ((s[i] = 'Ё') or (s[i] = 'ё')) then count += 1;
  writeln('Было:', s);    
  for i := 1 to count do 
    s += '!';
  writeln('Стало:', s);  
end.