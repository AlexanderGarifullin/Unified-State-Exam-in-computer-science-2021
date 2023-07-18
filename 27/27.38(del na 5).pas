//max S, mod 5 = 0 делится на 5
var
  n, i, s, j, k, t, a, b: integer;
  dif1: array[0..4] of integer;
  dif2: array[0..4] of integer;
  f: text;

begin
  assign(f, '27-4b.txt');
  reset(f);
  readln(f, n);
  for i := 0 to 4 do dif1[i] := 10000;
  for i := 1 to n do
  begin
    readln(f, a, b);
    s += max(a, b);
    for j := 0 to 4 do
      begin
        for k := 0 to 4 do  
          dif2[k] := dif1[k];
        t := abs(a - b) + dif2[j];
        if t < dif1[t mod 5] then
          dif1[t mod 5] := t;            
      end;
    t := abs(a - b) mod 5;
    if abs(a - b) < dif1[t] then
      dif1[t] := abs(a - b);     
  end;
  if s mod 5 <> 0 then
    s -= dif1[s mod 5];
  writeln(s);
  close(f); 
end.