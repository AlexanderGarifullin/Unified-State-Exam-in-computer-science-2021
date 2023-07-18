var
  s: string;
  c, m, i: integer;

begin
  assign(input, '24.txt');
  readln(s);c := 0;
  for i := 1 to length(s) do
    if (s[i] <> 'A') and (s[i] <> 'E') then
    begin
      c += 1;
      if c > m then m := c;
    end
    else c := 0;
  writeln(m);  
end.