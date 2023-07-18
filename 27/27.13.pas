program m;

var
  f: text;
  mindif, s, n, x, y: longint;

begin
  mindif := 10000;
  s := 0;
  assign(f, '27-A_1.txt');
  reset(f);
  readln(f, n);
  while not eof(f) do
  begin
    readln(f, x, y);
    if x > y then s := s + x
    else s := s + y;
    if (abs(x - y) < mindif) and (abs(x - y) mod 5 <> 0) then mindif := abs(x - y);
  end;
  if s mod 5 <> 0 then writeln(s)
  else writeln(s - mindif);
end.
