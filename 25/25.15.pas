program m;

var
  k, j, i, d, min: longint;

begin
  d := 0;
  min := 0;
  for i := 568023 to 569230 do
  begin
    k := 0;
    for j := 1 to i do
      if i mod j = 0 then
      begin
        k := k + 1;
        if k > d then 
        begin
          d := k;
          min := i;
        end;
      end;
  end;
  write(d, ' ', min);
end.
