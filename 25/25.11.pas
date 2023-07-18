program m;

var
  i: 95632..95650;
  j, s: 1..95650;
  k: 1..6;

begin
  for i := 95632 to 95650 do
  begin
    k := 0;
    for j := 1 to i do
      if (odd(j)) and (i mod j = 0) then
      begin
        k := k + 1;
        if k > 6 then break;
      end;
    if k = 6 then
    begin
      for s := 1 to i do
        if (odd(s)) and (i mod s = 0) then write(s, ' ');
      writeln;
    end;
  end;
end.