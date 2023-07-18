program m;

var
  i, max1, nmax: integer;
  s: string;
  a: array[0..25] of integer;

begin
  assign(input, '24.txt');
  readln(s);
  max1 := 0;nmax := 0;
  for i := 1 to Length(s) - 1 do 
    if s[i] = 'C' then
      a[ord(s[i + 1]) - 65] := a[ord(s[i + 1]) - 65] + 1;
  for i := 0 to 25 do
    if a[i] > max1 then
    begin
      max1 := a[i];
      nmax := i;
    end;  
  writeln(chr(nmax + 65));
end.