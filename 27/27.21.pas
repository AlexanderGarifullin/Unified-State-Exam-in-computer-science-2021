var
  f: text;
  mindif, n, i, s, a, b: longint;

begin
  mindif := 100000000;
  assign(f, '27-B.txt');
  reset(f);
  readln(f, n);
  for i := 1 to n do
  begin
    readln(f, a, b);
    if a > b then s += a
    else s += b;
    if (abs(a - b) mod 5 <> 0) and (abs(a - b) < mindif) then
      mindif := abs(a - b);
  end;
  if s mod 5 <> 0 then writeln(s)
  else if mindif <> 0 then writeln(s - mindif)
  else writeln('NO');
end.