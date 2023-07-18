program m;

var
  a: array[0..119] of integer;
  i, n, x, t, n1, n2: integer;
  f: text;

begin
  assign(f, '28133_B.txt');
  reset(f);
  readln(f, n);
  for i := 0 to 119 do 
    a[i] := 0;
  n1 := 0;
  n2 := 0;
  for i := 1 to n do
  begin
    readln(f, x);
    t := x mod 120;
    if t = 0 then t := 120;
    if (a[120 - t] > x) and (a[120 - t] + x > n1 + n2) then
    begin
      n1 := a[120 - t];
      n2 := x;
    end;
    if t < 120 then if a[t] < x then a[t] := x
      else if (x > a[0]) then a[0] := x;
  end; 
  if n1 + n2 <> 0 then writeln(n1, ' ', n2)
  else  writeln('00');
end.   