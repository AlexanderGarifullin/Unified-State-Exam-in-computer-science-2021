var s: string;
  c,m,i:integer;
begin
  assign(input,'C:\Users\User\Desktop\24 варианты 1-5.txt');
  readln(s);
  c := 1;
  m := 1;
  for i := 1 to length(s) - 1 do
    if (s[i] <= s[i+1]) then
      begin
        c += 1;
        m := max(c,m);
      end
    else c := 1;
  writeln(m);    
end.