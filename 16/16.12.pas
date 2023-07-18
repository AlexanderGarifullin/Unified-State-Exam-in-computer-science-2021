function f(n:integer):integer;
begin
if n = 1 then f := 1
else if n = 2 then f  := 2
else if (n > 2) and ( n mod 2 = 0) then f := ((n+f(n-2))div 5)
else if (n > 2) and ( n mod 2 = 1) then f := ((2*n+f(n-1)+f(n-2)) div 4)
end;
begin
writeln(f(50));
end.