program z26;

var
  t, last, fat, i, j, s, n: integer;
  ps: longint;
  f: text;
  a: array[1..1000] of integer;

begin
  assign(f, '26_demo.txt');
  reset(f);
  readln(f, s, n);
  for i := 1 to n do readln(f, a[i]);
  for i := 1 to n do
    for j := i + 1 to n do
      if (a[i] > a[j]) then 
      begin
        t := a[i];
        a[i] := a[j];
        a[j] := t
      end;
  ps := 0;
  for i := 1 to n do
  begin
    if (ps + a[i]) <= s then
    begin
      ps := ps + a[i];
      last := i;
    end;
  end;
  fat := a[last];
  ps := ps - fat;
  for i := (last + 1) to n do
  begin
    if (ps + a[i]) <= s then fat := a[i];
  end;
  writeln(last, ' ', fat);
end.