function f(n: integer): integer;
begin
  if n = 0 then f := 1
  else if n > 0 then f := 2 * f(1 - n) + 3 * f(n - 1) + 2
  else f := -f(-n);
end;

begin
  writeln(f(50));
end.  