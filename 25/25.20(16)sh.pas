program m;

var
  
  i: integer;

begin
  for i := 1500 to 9500 do
  begin
    if i = Power((i div 1000), 4) + Power((i div 100 mod 10), 4) +
        Power((i div 10 mod 10), 4) + Power((i mod 10 ), 4) then
      writeln(i);
  end;
end.