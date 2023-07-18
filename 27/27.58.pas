var
  t1, t2, t3, i, j, a, b, c, s, n, mx, mn, md: integer;
  d: array[0..3] of integer;
  d2: array[0..3] of integer;

begin
  assign(input, 'C:\Users\User\Desktop\27-B.txt');
  readln(n);
  for i := 0 to 3 do
    d[i] := 100000;
  for i := 1 to n do
  begin
    readln(a, b, c);
    mx := max(a, max(b, c));
    mn := min(a, min(b, c));
    md := a + b + c - mn - mx;
    s += mx + md;
    t1 := abs(mx - mn);
    t2 := abs(mx - md);
    t3 := abs(md - mn); 
    for j := 0 to 3 do 
      d2[j] := d[j];
    for j := 0 to 3 do
    begin
      if (t1 + d2[j]) < d2[(t1 + d2[j]) mod 4] then
        d[(t1 + d2[j]) mod 4] := t1 + d2[j];
      if (t2 + d2[j]) < d2[(t2 + d2[j]) mod 4] then
        d[(t2 + d2[j]) mod 4] := t2 + d2[j];
      if (t3 + d2[j]) < d2[(t3 + d2[j]) mod 4] then
        d[(t3 + d2[j]) mod 4] := t3 + d2[j];   
    end;
    if t1 < d[t1 mod 4] then d[t1 mod 4] := t1; 
    if t2 < d[t2 mod 4] then d[t2 mod 4] := t2;
    if t3 < d[t3 mod 4] then d[t3 mod 4] := t3;
  end;
  if s mod 4 = 0 then writeln(s)
    else 
  begin
    for i := 1 to 3 do
      if (s - d[i]) mod 4 = 0 then writeln(s - d[i]);
  end;
end.