var
  f: text;
  i, a, b, c, n, mr, mn, mx, md, s, s1, s2: integer;

begin
  assign(f, '27.txt');
  readln(f, n); mr := 10000000;  s := 0;
  for i := 1 to n do 
  begin
    readln(f, a, b, c);
    mn += min(a, min(a, b));
    mx += max(a, max(a, b));
    md += a + b + c - mn - mx; 
    s += mn;s1 += mx;s2 += md;
    if (md - mn < mr) and ((md - mn) mod 2 <> 0) then 
      mr := md - mn;
    if (mx - mn < mr) and ((mx - mn) mod 2 <> 0) then 
      mr := mx - mn;        
  end;
  if s1 mod 2 = s2 mod 2 then 
    s += mr;
  writeln(s);  
end.