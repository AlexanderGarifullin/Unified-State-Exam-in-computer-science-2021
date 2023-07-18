{макс не делится на 4}
var
  mr, mx, mn, md, i, n, s, a, b, c: integer;
  f: text;

begin
  assign(f, '27.txt'); 
  readln(f, n);
  mr := 10000;s := 0;
  for i := 1 to n do 
  begin
    readln(f, a, b, c);
    mx := max(a, max(b, c));
    mn := min(a, min(b, c));
    md := a + b + c - mn - mx;
    s += mx;
    if (mx - md < mr) and ((mx - md) mod 4 <> 0) then 
      mr := mx - md;
    if (mx - mn < mr) and ((mx - mn) mod 4 <> 0) then 
      mr := mx - mn; 
  end;
  if s mod 4 = 0 then 
    if mr = 10000 then 
      s := 0
    else 
      s -= mr;
  writeln(s);        
end.