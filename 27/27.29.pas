var
  a, b: array[0..59] of integer;
  x, i, n, c: integer;
  f: text;

begin
  assign(f, '27.txt');
  reset(f);
  readln(f, n);
  for i := 0 to 59 do 
  begin
    a[i] := 0;b[i] := 0;
  end;
  readln(f, x);
  for i := 2 to n do 
  begin
    a[x mod 60] += 1;
    if x > 80 then 
      b[x mod 60] += 1;
    readln(f, x);
    if x > 80 then 
      c += a[x mod 60]
    else 
      c += b[x mod 60];
  end;
  writeln(c);    
end.