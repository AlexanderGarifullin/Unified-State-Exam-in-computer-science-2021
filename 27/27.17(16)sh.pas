program m ;

var
  f: text;
  mindif, n, s, a, b: longint;

begin
  assign(f, '27-B.txt');
  reset(f);
  readln(f, n);
  s := 0;
  mindif := 100000;
  while not eof(f) do
  begin
    readln(f, a, b);
    if b > a then s := s + b 
    else s := s + a;
    if (abs(a - b) mod 23 <> 0) and (abs(a - b) < mindif) then
      mindif := abs(a - b);
  end;  
  if s mod 23 <> 0 then writeln(s)
  else writeln(s - mindif);
end.