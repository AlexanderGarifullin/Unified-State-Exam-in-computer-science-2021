function G(n:integer):integer;forward;

function f(n:integer):integer;
begin
  if n = 1 then f := 1;
  if n > 1 then f := f(n-1) - 2*G(n-1)
end;
function G(n:integer):integer;
begin
if n = 1 then G := 1;
if n > 1 then G := f(n-1) + G(n-1) + n;
end;
begin
writeln(G(36)); 
end.