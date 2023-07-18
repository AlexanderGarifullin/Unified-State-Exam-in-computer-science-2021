function f(n:integer):integer;
begin
  if n = 1 then f := 1
  else if n mod 2 = 0 then f := n + 2*f(n-1)
  else f := 1 + 3 * f(n-2);
end;
begin
  writeln(f(17));
end.
