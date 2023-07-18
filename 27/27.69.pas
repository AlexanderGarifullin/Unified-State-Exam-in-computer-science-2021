var
  i, j, mn, mx, md, t1, t2, n, a, b, c: longint;
  d: array[0..122] of longint;
  d2: array[0..122] of longint;
  ms,s:biginteger;
begin
  assign(input, 'C:\Users\User\Desktop\27-B.txt');
  readln(n);
  for j := 0 to 122 do
    d[j] := 100000;
  for i := 1 to n do
  begin
    readln(a, b, c);
    mn := min(a, min(b, c));
    mx := max(a, max(b, c));
    md := a + b + c - mx - mn;
    s += mn;
    t1 := mx - mn;
    t2 := md - mn;
    for j := 0 to 122 do 
      d2[j] := d[j];
    for j := 0 to 122 do
      if (t1 + d2[j]) < d2[(t1 + d2[j]) mod 123] then
        d[(t1 + d2[j]) mod 123] := t1 + d2[j];
    for j := 0 to 122 do
      if (t2 + d2[j]) < d2[(t2 + d2[j]) mod 123] then
        d[(t2 + d2[j]) mod 123] := t2 + d2[j];
    if t1 < d[t1 mod 123] then d[t1 mod 123] := t1; 
    if t2 < d[t2 mod 123] then d[t2 mod 123] := t2;      
  end;
  if (s mod 123 <> 0) and (s mod 2 = 0) then writeln(s)
  else
  begin
    ms := maxint;
    for j := 0 to 122 do 
      if ((s + d[j]) < ms) and ((s + d[j]) mod 123 <> 0) and ((s + d[j]) mod 2 = 0) then
        ms := s + d[j];
    writeln(ms);    
  end;
end.