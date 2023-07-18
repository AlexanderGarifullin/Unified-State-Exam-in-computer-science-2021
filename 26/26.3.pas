program m;

var
  f: text;
  sum, maxi, n, s, i, j, t: integer;
  a: array[1..5000] of integer;

begin
  assign(f, '28141.txt');
  reset(f);
  readln(f, s, n);
  for i := 1 to n do readln(f, a[i]);
  for i := 1 to n do
    for j := i + 1 to n do
      if a[i] > a[j] then begin
        t := a[i];
        a[i] := a[j];
        a[j] := t; 
      end;
  sum := 0;
  maxi := 1;
  for i := 1 to n do
    if sum + a[i] <= s then begin
      sum := sum + a[i];
      maxi := i;
    end;
  t := a[maxi];
  for i := maxi to n do
    if ((sum - t) + a[i]) <= s then begin
      sum := sum - t + a[i];
      t := a[i];
    end;
  writeln(maxi, ' ', t);
end.
