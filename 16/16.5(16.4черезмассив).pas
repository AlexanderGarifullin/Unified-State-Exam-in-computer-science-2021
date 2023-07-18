var
  f: array[1..800] of integer;
  n, d, x, c, t: integer;

begin
  for n := 1 to 800 do 
    if n <= 18 then 
      f[n] := n + 3
    else 
    if n mod 3 = 0 then f[n] := (n div 3) * f[n div 3] + n - 12
    else if n mod 3 <> 0 then 
      f[n] := f[n - 1] + n * n + 5;
  c := 0;
  for n := 1 to 800 do
  begin
    x := f[n]; 
    t := 0;
    while x > 0 do 
    begin
      if x mod 2 <> 0 then 
        t := t + 1;
      x := x div 10;
    end;
    if t = 0 then c := c + 1;
  end;
  writeln(c);
end.  