program m;

var
  f: text;
  s, a, b, mindif: integer;

begin
  assign(f, '27-A_demo.txt');
  reset(f);
  s := 0;
  mindif := 100000;
  while not eof(f) do
  begin
    readln(f, a, b);
    if b > a then s := s + b
    else  s := s + a;
    if (abs(b - a) mod 3 <> 0) and (abs(b - a) < mindif)
      then mindif := abs(b - a);
  end;
  if s mod 3 <> 0 then writeln(s)
  else writeln(s - mindif); 
end.    