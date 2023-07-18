var
  s: string;
  i, count: integer;
  f:text;
begin
  count := 0;
  assign(f, '24.txt');
  reset(f);
  while not eof(f) do 
  begin
    readln(f, s);
    for i := 1 to length(s) - 3 do 
      if (s[i] = 'Z') and (s[i + 2] = 'R') and (s[i + 3] = 'O') then
        count += 1;  
  end;
  writeln(count);
  close(f);
end.