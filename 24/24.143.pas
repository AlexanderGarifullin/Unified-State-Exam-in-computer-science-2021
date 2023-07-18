var
  s: string;
  c, m, i, cz, iz: integer;

begin
  assign(input, 'C:\Users\User\Desktop\24 варианты 1-5.txt');
  readln(s);
  c := 0;
  cz := 0;
  m := 0;
  for i := 1 to length(s)  do
    if (s[i] <> 'Z')  then
    begin
      c += 1;
      m := max(c, m);
    end
    else if (cz = 0) and (s[i] = 'Z') then
    begin
      cz := 1;
      iz := i;
      c += 1;
      m := max(c, m);
    end
    else if (cz = 1) and (s[i] = 'Z') then 
    begin
      cz := 1;
      c := i - iz;
      iz := i;
    end;
  writeln(m);    
end.