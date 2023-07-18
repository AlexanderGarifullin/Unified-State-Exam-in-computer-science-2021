program m;

var
  k, s, i, j: longint;

begin
  for i := 185311 to 185330 do
  begin
    k := 0;
    for j := 1 to i do
      if i mod j = 0 then 
      begin
        k := k + 1;
        if k > 4 then break;
      end;
    if k = 4 then
    begin
      for s := 1 to i do
        if i mod s = 0 then write(s, ' ');
      writeln;
    end;
  end;
end.