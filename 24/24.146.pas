var c,  m,  i:integer;
  s:string;
begin
  assign(input, 'C:\Users\User\Desktop\24 варианты 6-14.txt');
  readln(s);
  c := 0;
  m := 0;
  if strtoint(s[1]) mod 2 = 1 then c += 1;
  for i := 2 to length(s)   do
    if (strtoint(s[i]) mod 2 = 1) and (strtoint(s[i-1]) mod 2 = 1) and (s[i] >= s[i-1])then
      begin
        c += 1;
        m := max(c,m);
      end
    else if strtoint(s[i]) mod 2 = 1 then c := 1
    else c := 0;
    writeln(m);
end.