program m;

var
  d, min, k: longint;
  i: 84052..84130;
  j: 1..84130;

begin
  d := 0;
  min := 0;
  for i := 84052 to 84130 do
  begin
    k := 0;
    for j := 1 to i do
      if (i mod j = 0 ) then
      begin
        k := k + 1;
        if k > d then 
        begin
          min := i;
          d := k;
        end;      
      end;
  end;
  write(d, ' ', min);
end.