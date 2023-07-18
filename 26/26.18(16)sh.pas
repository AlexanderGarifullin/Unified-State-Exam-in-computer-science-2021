program m;

var
  f: text;
  a: array[1..9300] of integer;
  t, n, c, num, i, j: longint;
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
  for i := 1 to n do
    if a[i] < 21 then 
    begin
      num := i;
      s := s + a[i];
    end;
  c := (n - num) div 2;
  for i := num + 1  to num + c do
  begin
    s := s + 0.6 * a[i];   
    t := a[i];
  end;
  for i := n downto n - c + 1 do     
    s := s + a[i];
  writeln(round(s), ' ', t );
end.