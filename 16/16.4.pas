function f(n: integer): integer;
begin
  if n <= 18 then f := n + 3
  else if n mod 3 = 0 then f := (n div 3) * f(n div 3) + n - 12
  else f := f(n - 1) + n * n + 5;
end;

var
  k, t, count, i: integer;

begin
  count := 0;
  for i := 1 to 800 do 
  begin
    t := f(i);k := 0;
    while t <> 0 do 
    begin
      if t mod 2 = 1 then 
      begin
        k += 1;
        break;
      end;
      t := t div 10;  
    end;
    if k = 0 then count += 1;  
  end;
  writeln(count);
end.