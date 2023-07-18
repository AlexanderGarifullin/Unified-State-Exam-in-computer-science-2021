{(№ 3346) (Е. Джобс) Текстовый файл 24-j3.txt состоит не более чем из 10^6 
символов I, K, O, T. Сколько раз встречаются комбинации «TIK» и «TOK»?}
var s : string;
    i,  c : integer;
begin
  assign(input,'24-j3.txt');
  readln(s);
  for i := 1 to length(s) - 2 do
    begin
      if (s[i] = 'T') and (s[i+1] = 'I') and (s[i+2] = 'K') then c += 1; 
      if (s[i] = 'T') and (s[i+1] = 'O') and (s[i+2] = 'K') then c += 1; 
    end;
  writeln(c);    
end.