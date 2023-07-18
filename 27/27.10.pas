program m;

var
  f: text;
  a, n, n26, n2, n13: longint;

begin
  assign(f, '27988_A.txt');
  reset(f);
  while not eof(f) do
  begin
    readln(f, a);
    if (a mod 26 = 0) and (a >n26) then 
    begin
      if (n26 > n) then n := n26;
      n26 := a;
    end
    else if (a mod 2 = 0) and (a > n2) then n2 := a
    else if (a mod 13 = 0) and (a > n13) then n13 := a
    else if (a > n) then n := a;
  end;
  if (n * n26) < (n2 * n13) then writeln(n2 * n13)
  else writeln(n * n26);  
end.