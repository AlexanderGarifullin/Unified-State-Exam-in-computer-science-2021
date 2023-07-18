program m;

var
  f: text;
  a: array[1..7890] of integer;
  n, k, i, j, t: integer;
  s: real;

begin
  s := 0;
  assign(f, '26.txt');
  reset(f);
  readln(f, n, k);
  for i := 1 to n do readln(f, a[i]);
  for i := 1 to n do
    for j := i + 1 to n do
      if a[i] > a[j] then
      begin
        t := a[i];
        a[i] := a[j];
        a[j] := t;
      end;
  for i := n downto n + 1 - k do
    s := s + 0.3 * a[i];
  writeln(a[n - k], ' ', trunc(s));  
end.