program m;

var
  f: text;
  s, n, i, j, t, cur, max: longint;
  a: array[1..3450] of integer;

begin
  assign(f, '26.txt');
  reset(f);
  readln(f, s, n);
  for i := 1 to n do readln(f, a[i]);
  for i := 1 to n do
    for j := i + 1 to n do 
      if a[i] > a[j] then
      begin
        t := a[i];
        a[i] := a[j];
        a[j] := t;
      end;
  max := a[n];cur := 0;
  for i := n downto 1 do
    if cur <= s then
      if a[i] > 79 then cur += 1;
  writeln(cur, ' ', max);    
end.