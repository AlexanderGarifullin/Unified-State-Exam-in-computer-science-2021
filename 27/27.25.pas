var
  f: text;
  n, minod, minev, odd, count, i, even, x: integer;

begin
  assign(f, '27-B.txt');
  reset(f);minod := 1000000;
  readln(f, n);minev := 10000000;
  readln(f, x);
  odd := 0;count := 0;even := 0;
  for i := 2 to n do 
  begin
    if (x mod 2 = 1) and (x < minod) then minod := x
    else if (x mod 2 = 0) and (x < minev) then minev := x;
    if x mod 2 = 1 then odd += 1;if x mod 2 = 0 then even += 1;
    readln(f, x);
    if (x mod 2 = 1) then 
      if x > minev then count += even;
    if (x mod 2 = 0) then
      if x > minod then count += odd;     
  end;
  writeln(count);
end.