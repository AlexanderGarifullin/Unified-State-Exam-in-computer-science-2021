program m;

var
  f: text;
  a: array[1..3000] of integer;
  i, j, n, s, t, sum, last: integer;

begin
  last := 1;
  sum := 0;
  assign(f, '28139.txt');
  reset(f);
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
    if sum + a[i] <= s then
    begin
      sum := sum + a[i];
      last := i;
    end;
  t := a[last];
  for i := last to n do
    if (sum - t + a[i]) <= s then
    begin
      sum := sum - t + a[i];
      t := a[i];
    end;
  writeln(last, ' ', t);
end.


