program m;

var
  s: string;
  cur, max, i: integer;

begin
  assign(input, '24_demo.txt');
  readln(s);
  cur := 1;
  max := 1;
  for i := 2 to length(s) do
    if (s[i] <> s[i - 1]) then
    begin
      cur := cur + 1;
      if cur > max then max := cur;
    end
    else cur := 1;
  writeln(max);
end.