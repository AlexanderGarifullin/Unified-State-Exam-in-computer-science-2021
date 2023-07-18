function f(n:integer):integer;
begin
  if n <= 1 then f := 1
  else if n mod 2 = 0 then f := n * f(n-1)
  else f := n + f(n-2);
end;
begin
  writeln(f(84));
end.