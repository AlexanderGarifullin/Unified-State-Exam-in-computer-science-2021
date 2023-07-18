program ml;

var
  s, d, k: longint;
  i: 120115..120200;
  j: 1..120200;

begin
  d := 0;
  for i := 120115 to 120200 do 
  begin
    k := 0;
    for j := 1 to i do         
    begin
      if i mod j = 0 then k := k + 1;
      if k > d then 
      begin
        d := k;
        s := i;
      end;
    end;
  end;
  write(d, ' ', s);
end.