program m;

var
  f: text;
  a: array[1..2000] of integer;
  n, s, i, j, t, sum, last: integer;

begin
  assign(f, '27888.txt');
  reset(f);
  sum := 0;
  last := 1;
  readln(f, s, n);
  for i := 1 to n do readln(f, a[i]);
  for i := 1 to n do
    for j := i + 1 to n do 
      if a[i] > a[j] then
      begin
        t := a[i];
        a[i] := a[j];
        a[j] := t;
      end;
  for i := 1 to n do
    if (sum + a[i]) <= s then
    begin
      sum := sum + a[i];
      last := i;
    end;
  t := a[last];
  for i := last to n do
    if ((sum - t + a[i]) <= s) then 
    begin
      sum := sum - t + a[i];
      t:=a[i];
    end;
  writeln(last, ' ', t);
end.    