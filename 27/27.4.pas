program z;

var
  s: string;
  a, b, c, m, k, n, i: integer;

begin
  a := 0;b := 0;c := 0;m := 0;
  assign(input, '27-B_2.txt');
  readln(n);  
  for i := 1 to n do
  begin
    readln(k);
    if (k mod 2 = 0) and (k mod 7 > 0) and (k > a) then a := k;
    if (k mod 7 = 0) and (k mod 2 > 0) and (k > b) then b := k;
    if (k mod 14 = 0) and (k > c) then
    begin
      if c > m then m := c;
      c := k;
    end
    else if k > m then m := k;  
  end;
  if (a * b < c * m) then writeln(c * m)
  else  writeln(a * b);
end.