var
  f: text;
  a: array[0..1, 0..1] of integer;
  n, t, x, x1, i, j, k, ms: integer;

begin
  assign(f, '27.txt');
  reset(f);
  readln(f, n);
  readln(n);
  ms := 0;x1 := 0;
  readln(x);
  for i := 2 to n do
  begin
    t := 1;
    if t mod 5 = 0 then 
      t := 0;
    if x > a[t, x mod 2] then 
      a[t, x mod 2] := x;
    readln(f, x);
    for k := 0 to 1 do 
      for j := 0 to 1 do 
        if ((x + a[k, j]) > ms) and ((x * a[k, j]) mod 5 = 0) 
          and ((x + a[k, j]) mod 2 = 1) and (a[k, j] > 0) then
        begin
          ms := x + a[k, j];
          x1 := x;
        end;
  end;
  writeln(x1, ' ', ms - x1);     
end.