program m;

var
  k, i, s, j: longint;

begin
  for i := 125256 to 125330 do
  begin
    k := 0;
    for j := 1 to i do
      if (i mod j = 0 ) and (not (odd(j))) then
      begin
        k := k + 1;
        if k > 6 then break;
      end;
    if k = 6 then
    begin
      for s := 1 to i do
        if (i mod s = 0 ) and (not (odd(s))) then write(s, ' ');
      writeln
    end;
  end;
end.