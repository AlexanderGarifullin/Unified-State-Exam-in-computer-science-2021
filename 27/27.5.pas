program a;

var
  f: text;
  n, k, s, x, t, z, m, r1, r2: longint;

begin
  assign(f, '28128_B.txt');
  reset(f);
  while not eof(f) do
  begin
    readln(f, x);
    if x mod 3 = 0 then 
    begin
      if x > s then 
      begin
        s := x;
        z := s;
      end
      else  if x > z then z := x;
    end
    else if x mod 3 = 1 then begin if x > t then t := x; end 
    else if x mod 3 = 2 then begin if x > m then m := x; end
  end;
  r1 := z + s;
  r2 := t + m;
  if r2 > r1 then writeln(r2)
  else writeln(r1);
end.