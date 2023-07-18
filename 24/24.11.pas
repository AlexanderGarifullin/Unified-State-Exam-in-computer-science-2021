program m;

var
  cur, max, i: integer;
  s: string;

begin
  assign(input, '24_demo.txt');
  readln(s);
  max := 1;
  cur := 1;
  for i := 2 to length(s) do
    if (s[i] = s[i - 1]) and (s[i] = 'Y') then
    begin
      cur := cur + 1;
      if cur > max then max := cur;
    end
    else
      cur := 1;
  writeln(max);
end.