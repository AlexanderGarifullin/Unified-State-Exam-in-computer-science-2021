program m;

var
  f: text;
  n, k, k26, k2, k13: longint;

begin
  assign(f, '27989_B.txt');
  reset(f);
  readln(f, n);
  while not eof(f) do
  begin
    readln(f, k);
    if k mod 26 = 0 then k26 := k26 + 1
    else if k mod 13 = 0 then k13 := k13 + 1
    else if k mod 2 = 0 then k2 := k2 + 1;
  end;
  writeln(k26 * (k26 - 1) div 2 + k13 * k2 + k26 * (n - k26));  
end.