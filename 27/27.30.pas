{сумма максимальна и делится на 4}
var
  s, i, n, a, b: integer;
  f: text;
  mr: array[0..3] of integer;

begin
  for i := 0 to 3 do mr[i] := 10000000;
  assign(f, '27.txt');
  readln(f, n);
  for i := 1 to n do 
  begin
    readln(f, a, b);
    s += max(a, b);
    if abs(a - b) < mr[abs(a - b) mod 4] then 
      mr[abs(a - b) mod 4] := abs(a - b);
  end;
  if s mod 4 <> 0 then 
    if mr[s mod 4] < 10000000 then 
      s -= mr[s mod 4]
    else s := 0;
  writeln(s);
end.