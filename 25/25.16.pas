program m;

var
  i, k, j, d, prost: longint;

begin
  d := 0;
  for i := 2422000 to 2422080 do
  begin
    k := 0;
    for j := 1 to i do
      if i mod j = 0 then
      begin
        k := k + 1;
        if k > 2 then break;
      end;
    if k = 2 then 
    begin
      d := d + 1;
      writeln(d, ' ', i);
    end;
  end;
end.