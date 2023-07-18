var
  s: string;
  m, i, c, i2: integer;

begin
  assign(input, '24.txt');
  readln(s);
  c := 1;m := 0;
  for i := 1 to length(s) - 1 do
    if (s[i] > s[i + 1]) then
    begin
      c += 1;
      if c > m then
      begin
        i2 := i + 1;
        m := c;
      end;
    end
    else c := 1;  
  writeln(i2 - m + 1);
end.