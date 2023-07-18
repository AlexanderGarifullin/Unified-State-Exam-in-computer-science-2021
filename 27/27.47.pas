var
  i, j, s, n, a, b: integer;
  d: array[0..256]of integer;
  d1: array[0..256]of integer;

begin
  assign(input, '27b.txt');
  readln(n);
  for i := 0 to 256 do d[i] := 100000;
  for j := 1 to n do
  begin
    readln(a, b);
    s += min(a, b);
    for i := 0 to 256 do d1[i] := d[i];
    for i := 0 to 256 do
      if (abs(a - b) + d1[i]) < d1[(abs(a - b) + d1[i]) mod 256] then
        d[(abs(a - b) + d1[i]) mod 256] := abs(a - b) + d1[i];
    if (abs(a - b) < d[(abs(a - b)) mod 256]) then d[(abs(a - b)) mod 256] := abs(a - b); 
  end;
  for i := 1 to 256 do
    if (s + d[i]) mod 256 = 31 then writeln(s + d[i]);  
end.