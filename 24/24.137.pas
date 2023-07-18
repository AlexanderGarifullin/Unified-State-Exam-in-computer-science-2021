var s:string;
  i,m,c:integer;
begin
  assign(input,'C:\Users\User\Desktop\24.txt');
  readln(s);  m := 0; c := 0;
  for i := 1 to length(s) do 
    if (s[i] <> 'W') and (s[i] <> 'R') and (s[i] <> 'Q') then
      begin
       c += 1;
       m := max(m,c);
      end
   else  c := 0;
   writeln(m);
end.