var c,m,i:integer;
  s:string;
begin
  assign(input, 'C:\Users\User\Desktop\24 варианты 6-14.txt');
  readln(s);
  c := 1;
  m := 0;
  for i := 1 to length(s) -1 do
    if s[i] = s[i+1] then
      begin
        c +=  1;
        m := max(m,c);
      end
    else c := 1;  
  writeln(m);
end.