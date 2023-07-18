program z;

const
  m = 80;
  b = 50;

var
  a0: array[0..m - 1] of integer;
  a1: array[0..m - 1] of integer;
  i, n, x, p, s: integer;
  f: text;

begin
  for i := 0 to m - 1 do 
  begin
    a0[i] := 0;
    a1[i] := 0;
  end; 
  assign(f, '28130_B.txt');
  reset(f);
  readln(f, n);
  for i := 0 to n - 1 do 
  begin
    readln(f, x);
    p := x mod m;
    if x <= b then a0[p] := a0[p] + 1
    else a1[p] := a1[p] + 1;
  end;
  p := 0;
  s := a0[p] * a1[p] + ((a1[p] * (a1[p] - 1)) div 2);
  p := m div 2;
  s := s + a0[p] * a1[p] + ((a1[p] * (a1[p] - 1)) div 2);
  for p := 1 to ((m div 2) - 1) do
    s := s + (a0[p] + a1[p]) * a1[m - p] + a1[p] * a0[m - p];
  writeln(s);  
end.