program z;

var
  f: text;
  n, k, k2, k7, k14, m: longint;

begin
  assign(f, '27985_B.txt');
  reset(f);
  readln(f, n);
  while not eof(f) do
  begin
    readln(f, k);
    if (k mod 7 > 0) and (k mod 2 = 0) and (k > k2) then k2 := k;
    if (k mod 2 > 0) and (k mod 7 = 0) and (k > k7) then k7 := k;
    if (k mod 14 = 0) and (k > k14) then 
    begin
      if k14 > m then m := k14;
      k14 := k
    end
    else if k > m then m := k;  
  end;
  if (k2 * k7 < k14 * m) then writeln(k14 * m)
  else writeln(k2 * k7);
end.