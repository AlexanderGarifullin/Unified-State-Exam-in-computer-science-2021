var
  s: string;
  cz, i, m, c, iz1, iz2: integer;

begin
  assign(input, 'C:\Users\User\Desktop\24 варианты 1-5.txt');
  readln(s);
  cz := 0;
  for i := 1 to length(s) do 
    if s[i] <> 'Z' then
    begin
      c += 1;
      m := max(m, c);
    end
    else if (s[i] = 'Z') and (cz = 0) then
    begin
      iz1 := i;
      c += 1;
      m := max(m, c);
      cz := 1;
    end
    else if (s[i] = 'Z') and (cz = 1) then
    begin
      c += 1;
      m := max(m, c);
      cz := 2;
      iz2 := i;
    end
    else if (s[i] = 'Z') and (cz = 2) then
    begin
      cz := 2;
      c := i - iz1;
      iz1 := iz2;
      iz2 := i;
    end;
  writeln(m);    
end.  