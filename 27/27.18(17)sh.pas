program m;

var
  f: text;
  n, a, b, s, mindif, i: longint;

begin
  assign(f, '27_B.txt');
  reset(f);
  readln(f, n);
  mindif := 100000;
  for i := 1 to n do 
  begin
    readln(f, a, b);
    if a > b then s := s + a 
    else s := s + b; 
    if (abs(a - b) mod 7 <> 0) and (abs(a - b) < mindif) then
      mindif := abs(a - b);
  end;
  if s mod 7 <> 0 then writeln(s)
  else writeln(s - mindif);
end.