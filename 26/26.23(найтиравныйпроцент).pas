var
  a: array[1..1000] of real;
  f: text;
  i, j, n: integer;
  curs, lim, s, osts, t, min, per: real;

begin
  assign(f, '26.txt');
  reset(f);
  readln(f, n);s := 0;curs := 0;lim := 0;osts := 0;
  for i := 1 to n do  
  begin
    readln(f, a[i]);
    s += a[i];  
  end; 
  for i := 1 to n do 
    for j := i + 1 to n do 
      if a[i] > a[j] then 
      begin
        t := a[j];
        a[j] := a[i];
        a[i] := t;
      end;
  lim := s * 0.6;
  for i := (n - n div 5) to n do 
    curs += a[i] * 0.8;
  min := lim - curs;
  for i := 1 to n - n div 5 do 
    osts += a[i];
  per := min / osts;
  writeln(trunc(curs), ' ', trunc(a[1] * per));
end.