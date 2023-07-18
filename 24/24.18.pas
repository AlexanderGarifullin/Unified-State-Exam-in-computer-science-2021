program m;

var
  cur, max, i: integer;
  s: string;

begin
  assign(input, 'zadanie24_2.txt');
  readln(s);
  cur := 0;
  max := 0;
  for i := 1 to length(s) do 
    if (s[i] = 'L') and (cur mod 3 = 0 ) or 
          (s[i] = 'D') and (cur mod 3 = 1) or
     (s[i] = 'R') and (cur mod 3 = 2) then 
    begin
      cur := cur + 1;
      if cur > max then max := cur;
    end
    else if s[i] = 'L' then cur := 1 
    else cur := 0;
  writeln(max);
end.