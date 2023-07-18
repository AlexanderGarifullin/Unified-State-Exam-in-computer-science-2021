var
  mx, mn, md, a, b, c, n, i, j, t1, t2, m: integer;
  d: array[0..100] of integer;
  d2: array[0..100] of integer;
  s, ms: biginteger;

begin
  assign(input, 'C:\Users\User\Desktop\27_B.txt');
  readln(n);
  for j := 0 to 100 do 
    d[j] := 100000;
  for i := 1 to n do
  begin
    readln(a, b, c);
    mx := max(a, max(b, c));
    mn := min(a, min(b, c));
    md := a + b + c - mn - mx;
    s += mx;
    t1 := abs(mx - mn);
    t2 := abs(mx - md);
    for j := 0 to 100 do 
      d2[j] := d[j];
    for j := 1 to 100 do 
    begin
      if ((t1 + d2[j]) < (d2[(t1 + d2[j]) mod 101]))then d[(t1 + d2[j]) mod 101] := t1 + d2[j]; 
      if ((t2 + d2[j]) < (d2[(t2 + d2[j]) mod 101]))  then d[(t2 + d2[j]) mod 101] := t2 + d2[j]; 
    end;
    if t1 < d[t1 mod 101] then d[t1 mod 101] := t1;
    if t2 < d[t2 mod 101] then d[t2 mod 101] := t2;
  end;
  m := maxint;
  for j := 1 to 100 do m := min(m, d[j]);
  if s mod 101 <> 0 then writeln(s)
  else writeln(s-m);
end.