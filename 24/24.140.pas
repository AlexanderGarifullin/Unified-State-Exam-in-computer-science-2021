var s:string;
  i,c:integer;
begin
  assign(input,'C:\Users\User\Desktop\24-j4.txt');
  readln(s);
  for i := 1 to length(s) - 4 do  
    if (s[i] = 'B') and (s[i+1] = 'O') and (s[i+2] = 'S') and (s[i+3] = 'S') then
      if (s[i+4] <> 'J') and (s[i-1] <> 'J') then 
        c += 1;
 writeln(c);     
end.