program m;

var
  f: text;
  ev: array [0..12] of integer;
  odd: array [0..12] of integer;
  n, x, i,s: integer;

begin
  assign(f, '27-B.txt');
  reset(f);
  readln(f, n);
  for i := 0 to 12 do begin
  odd[i] := 0;
  ev[i] := 0;
  s:=0;
  end;
  for i := 1 to n do
  begin
    readln(f, x);
    if x mod 2 = 0 then inc(ev[x mod 13]) 
    else inc(odd[x mod 13])
  end;
  s += ev[0] * odd[0] + ev[0]*(ev[0] - 1) div 2 ;
  for i:=1 to 12 do
      s +=  ev[i]*odd[i] + ev[i]*(ev[i]-1) div 2 ;
  writeln(s);
end.