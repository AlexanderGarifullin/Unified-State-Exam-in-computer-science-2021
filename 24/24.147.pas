var c,i:integer;
  s:string;
begin
  assign(input, 'C:\Users\User\Desktop\24 варианты 17-20.txt');
  readln(s);
  for i := 1 to length(s) -2 do
    if (s[i] = 'X') and (s[i+1] = 'V') and (s[i+2] = 'I') then
      c += 1;
  writeln(c);    
end.