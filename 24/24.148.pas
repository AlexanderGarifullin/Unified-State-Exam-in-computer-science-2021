var s:string;
  c,m,i:integer;
begin
  assign(input, 'C:\Users\User\Desktop\24 варианты 17-20.txt');
  readln(s);
  c := 1;
  m := 0;
  for i := 1 to length(s)-1 do
    if ((s[i] <= 'C') and (s[i] >= 'A') and (s[i+1] <= '3') and (s[i+1] >= '1')) or 
      ((s[i+1] <= 'C') and (s[i+1] >= 'A') and (s[i] <= '3') and (s[i] >= '1')) then
        begin
          c += 1;
          m := max(m,c);
        end
    else c := 1;
  writeln(m);
end.


