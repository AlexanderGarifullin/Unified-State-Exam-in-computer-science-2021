program m;

var
  s: string;
  i, count: longint;

begin
  assign(input, '24-5.txt');
  readln(s);
  for i := 2 to length(s) do
  begin
    if (s[i] = ')') and (s[i - 1] = '(') then
      count += 1;
  end;
  writeln(count);
end.