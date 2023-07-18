var
  i, count, c, t: integer;

function f(n: integer): integer;
begin
  if n <= 5 then f := n + 15 
  else if (n mod 2 = 0) then 
    f := f(n div 2) + n * n * n - 1
  else   
    f := f(n - 1) + 2 * n * n + 1;  
end;

begin
  for i := 1 to 1000 do
  begin
    t := f(i);c := 0;
    while t <> 0 do
    begin
      if t mod 10 = 8 then c += 1;
      t := t div 10;
    end;    
    if c >= 2 then count += 1;  
  end;
  writeln(count);
end.  