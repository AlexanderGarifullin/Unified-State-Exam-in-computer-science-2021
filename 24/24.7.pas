program m;

var
  max, cur, i: integer;
  s: string;

begin
  assign(input, 'zadanie24_2.txt');
  readln(s);
  max := 1;
  cur := 1;
  for i := 2 to Length(s) do
    if (s[i] = s[i - 1]) and (s[i] = 'L') then
    begin
      cur := cur + 1;
      if cur > max then
        max := cur;
    end
    else
      cur := 1;
  writeln(max);
end.


