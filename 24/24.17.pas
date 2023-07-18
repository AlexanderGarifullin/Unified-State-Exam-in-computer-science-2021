program m;

var
  cur, max, i: integer;
  s: string;

begin
  assign(input, 'zadanie24_1.txt');
  readln(s);
  cur := 0;
  max := 0;
  for i := 1 to length(s) do
    if (s[i] = 'A') and (cur mod 2 = 0) or 
    (s[i] = 'B') and (cur mod 2 = 1) then
    begin
      cur := cur + 1;
      if cur > max then max := cur;
    end
    else if s[i] = 'A' then cur := 1
    else  cur := 0;
  writeln(max);
end.