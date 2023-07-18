var a:array[0..30] of integer;
  i,n,s,c,b,d,md:integer;
begin
  assign(input,'C:\Users\User\Desktop\27v01_B.txt');
  readln(n);
  md := maxint;
  for i := 0 to 30 do a[i] := 1000000;
  for i := 1 to n do
    begin
      readln(c,b);
      s += max(c,b);
      d := max(c,b)-min(c,b);
      if (d mod 31 <> 0) and (d < md)then md := d;
    end;
  writeln(s);
  if s mod 31 <> 0 then writeln(s)
  else 
    writeln(s-md);
end.