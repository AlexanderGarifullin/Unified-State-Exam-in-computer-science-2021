var
  
  count, x, i, n: integer;
  a: array[10..13] of integer;
  uniq: array[0..1] of integer;
  pairs: array[0..1] of integer;

begin
  
  readln(n);
  for i := 1 to n do 
  begin
    readln(x);
    a[x] += 1;
  end;
  for i := 10 to 13 do 
    if a[i] > 0 then 
    begin
      uniq[i mod 2] += 1;
      if a[i] > 1 then 
        pairs[i mod 2] += 1;
    end;
  writeln(a);
  writeln(uniq);
  writeln(pairs);writeln;
  // (a,b) (c,d)
  count := (uniq[0] * (uniq[0] - 1) div 2 * uniq[1] * (uniq[1] - 1) div 2);writeln(count, ' ', uniq[0], ' ', uniq[1]);
  //  (a,a) (c, d)
  count += pairs[0] * (uniq[1] * (uniq[1] - 1) div 2);writeln(count, ' ', uniq[1], ' ', pairs[0]);
  //  (a, b) (c,c)
  count += pairs[1] * (uniq[0] * (uniq[0] - 1) div 2);writeln(count, ' ', uniq[0], ' ', pairs[1]);
  //  (a,a) (c,c)
  count += pairs[0] * pairs[1];writeln(count, ' ', pairs[0], ' ', pairs[1]);
  writeln(count);
end. 