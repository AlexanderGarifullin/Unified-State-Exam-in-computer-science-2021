program m;

var
  i: 110203..110245;
  s, j: 1..110245;
  k: 0..4;

begin
  for i := 110203 to 110245 do
  begin
    k := 0;
    for j := 1 to i do
      if not (odd(j)) and (i mod j = 0) then
      begin
        k := k + 1;
        if k > 4 then break;
      end;
    if k = 4 then
    begin
      for s := 1 to i do
        if not (odd(s)) and (i mod s = 0) then write(s, ' ');
      writeln;
    end;
  end;
end.