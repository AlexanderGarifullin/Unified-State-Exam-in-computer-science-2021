var
  f: text;
  n, m, p, i, x,j: integer;
  a:array[1..8] of integer;
begin
  assign(f, '27-B.txt');
  reset(f);
  readln(f, n);
  for i := 1 to 8 do readln(f,a[i]);
  m := 0;p := 0;
  for i := 9 to n do 
  begin
    if m < a[1] then m := a[1];
    readln(f, x);
    if p < x * m then p := x * m;
    for j := 1 to 7 do 
      a[j] := a[j + 1];
    a[8] := x;  
  end;
  writeln(p,' ',m); 
  writeln(a);
end.