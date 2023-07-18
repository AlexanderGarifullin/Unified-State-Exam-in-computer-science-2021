program m;

var
  s: string;
  i, cur, max: integer;

begin
  assign(input, '24.txt');
  readln(s);
  cur := 0;max := 0;
  for i := 1 to length(s) do
    if (s[i] = 'К') and (cur mod 3 = 0) or
        (s[i] = 'О') and (cur mod 3 = 1) or
        (s[i] = 'Т') and (cur mod 3 = 2) then
    begin
      cur += 1;
      if cur > max then max := cur;
    end
    else if s[i] = 'К' then cur := 1
    else cur := 0;
  writeln(max div 3);
end.