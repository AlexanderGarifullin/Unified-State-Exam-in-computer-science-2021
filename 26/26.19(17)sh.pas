program m;

var
  f: text;
  a: array [1..9300] of longint;
  n, t, c, i, j: longint;
  s: real;

begin
  assign(f, '26.txt');
  reset(f);
  readln(f, n);
  for i := 1 to n do readln(f, a[i]);
  for i := 1 to n do
    for j := i + 1 to n do
      if a[i] > a[j] then
      begin
        t := a[i];
        a[i] := a[j];
        a[j] := t;
      end;
  for i := 1 to i do 
    if a[i] < 121 then 
    begin
      s := s + a[i];
      t := i;
    end;
  
  for i := t + 1 to t + (n - t) div 2 do
  begin
    s := s + 0.5 * a[i];
    c := a[i];
  end;
  for i := n downto n - (n - t) div 2 + 1  do
    s := s + a[i];
  if n - t mod 2 = 0 then writeln(round(s), ' ', c)   
  else writeln(round(s + a[t + (n - t) div 2 + 1]), ' ', c);
end.