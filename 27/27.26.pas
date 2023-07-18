var
  f: text;
  n, mind, a, b, s: integer;

begin
  assign(f, '27.txt');
  reset(f);
  readln(f, n);s := 0;mind := 1000000000;
  while not eof(f) do 
  begin
    readln(f, a, b);
    if a > b then s += a
    else s += b;
    if (abs(a - b) mod 4 <> 0) and (abs(a - b) < mind) then
      mind := abs(a - b)
  end;
  if s mod 4 <> 0 then writeln(s)
  else writeln(s - mind);
end.