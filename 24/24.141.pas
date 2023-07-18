var c,  m,  i:integer;
    s:string;
begin
  assign(input,'C:\Users\User\Desktop\24.txt');
  readln(s);
  c := 1;
  m := 1;
  for i := 2 to length(s) do
    if (s[i-1] = 'X') and ((s[i] = 'Y') or (s[i] = 'Z')) then
      c := 1
    else 
      begin
        c += 1;
        m := max(m,c);
      end;
  writeln(m);      
end.