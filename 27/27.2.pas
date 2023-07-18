program m;

var
  n, a, s, i: integer;
  ost: array[0..8] of integer;
  f: text;

begin
  assign(f, '27.txt');
  reset(f);
  readln(f, n);
  for i := 0 to 8 do ost[i] := 0;
  while not eof(f) do 
  begin
    readln(f, a);
    inc(ost[a mod 9]);
  end;
  s := ost[0] * (ost[0] - 1) div 2;
  for i := 1 to 4 do s := s + ost[i] * ost[9 - i];
  writeln(s);
end.  