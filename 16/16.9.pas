function f(n:integer):integer;
begin
  if n <= 1 then f := 2
  else f := f(n-1)+f(n-2)+2*n+4;
end;
begin
  writeln(f(25));
end.