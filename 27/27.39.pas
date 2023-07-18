var
  a, b, c, n, i, mx, mn, md, s1, s2, sr, mr: integer;

begin
  assign(input, '');
  readln(n);
  s1 := 0;s2 := 0;sr := 0;mr := 10000;
  for i := 1 to n do
  begin
    readln(a, b, c);
    mx := max(a, b, c);
    mn := min(a, b, c);
    md := a + b + c - mx - mn;
    sr += mx;
    s1 += md;
    s2 += mn;
    if (mx - md < mr) and ((mx - md) mod 2 <> 0) then
      mr := mx - md;
    if (mx - mn < mr) and ((mx - mn) mod 2 <> 0) then
      mr := mx - mn;  
  end;
  if (s1 + s2) mod 2 = 0 then
    sr -= mr;
  writeln(sr);    
end.