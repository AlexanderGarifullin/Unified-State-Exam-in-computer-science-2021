var
  n, count, j, x, i: integer;
  a: array[1..100] of integer;
  f: text;

begin
  assign(f, '27-B.txt');
  reset(f);
  readln(f, n);
  readln(f, x);
  for i := 1 to n - 1 do
  begin
    a[x] += 1;
    readln(f, x);
    for j := 1 to 100 do
      if (x + j > 50) and (a[j] <> 0) and (x > j) then 
        count += a[j];
  end;
  writeln(count);
end.