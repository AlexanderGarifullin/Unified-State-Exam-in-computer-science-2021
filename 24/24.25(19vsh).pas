program m;

var
  s: string;
  a: array[0..25] of integer;
  i, max, k, prk, prmax: longint;

begin
  assign(input, '24.txt');
  readln(s);
  for i := 1 to length(s) - 1 do
    if s[i] = 'Y' then
    begin
      a[ord(s[i + 1]) - 65] := a[ord(s[i + 1]) - 65] + 1;
    end;
  max := 0;
  for i := 0 to 25  do
    if a[i] >= max then begin prmax := max;prk := k;max := a[i];k := i; end;      
  writeln(chr(k + 65), ' ', prmax);
  writeln(chr(prk + 65), ' ', max);
end.