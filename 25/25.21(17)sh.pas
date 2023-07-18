program m ;

var
  i, t, cur: longint;

begin
  for i := 111111 to 119019 do
  begin
    if (i div 100000 + i div 10000 mod 10 + i div 1000 mod 10) = 
    (i div 100 mod 10 + i div 10 mod 10 + i mod 10) then
    begin
      cur := cur + 1;
      t := i;
    end;
  end;
  writeln(t, ' ', cur);  
end.