program m;

var
  f: text;
  s, mindif, x, y, n: longint;

begin
  s := 0;
  mindif := 10000;
  assign(f, '27-A_demo.txt');
  reset(f);
  readln(f, n);
  while not eof(f) do
  begin
    readln(f, x, y);
    if x > y then s := s + y
    else s := s + x;
    if (abs(x - y) < mindif) and (abs(x - y) mod 3 <> 0) then mindif := abs(x - y);
  end;
  if s mod 3 <> 0 then writeln(s)
  else writeln(s - mindif)
end.