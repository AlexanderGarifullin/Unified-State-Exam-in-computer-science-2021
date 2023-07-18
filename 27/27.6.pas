program m;

var
  f: text;
  n, k, k2, k31, k62: longint;

begin
  assign(f, '27990_B.txt');
  reset(f);
  readln(f, n);
  while not eof(f) do
  begin
    readln(f, k);
    if k mod 62 = 0 then k62 := k62 + 1
    else if (k mod 31 = 0) then k31 := k31 + 1
    else if (k mod 2 = 0) then k2 := k2 + 1;
  end;
  writeln(k62 * (k62 - 1) div 2 + k62 * (n - k62) + k2 * k31); 
end.