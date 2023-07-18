program m;

var
  s: string;
  cur, max, i: integer;

begin
  assign(input, '24_demo.txt');
  readln(s);
  cur := 0;
  max := 0;
  for i := 1 to length(s) do
    if (s[i] = 'X') and (cur mod 3 = 0 ) or
        (s[i] = 'Y') and (cur mod 3 = 1) or
        (s[i] = 'Z') and (cur mod 3 = 2) then
    begin
      cur := cur + 1;
      if cur > max then max := cur;
    end
    else if s[i] = 'X' then cur := 1
    else cur := 0;
  writeln(max);
end.