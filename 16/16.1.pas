function f(n: integer): integer;

begin
  if n = 0 then f := 5
  else if n > 0 then f := 3 * f(n - 4)
  else if n < 0 then f := f(n + 3);
  
end;

begin
  writeln(f(43));
end.