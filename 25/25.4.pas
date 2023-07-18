program m;

var
  k, d, i, j, s: longint;

begin
  for i := 174457 to 174505 do
  begin
    k := 0;
    for j := 2 to i div 2 do
    begin
      if i mod j = 0 then 
      begin
        k := k + 1;
        if k > 2 then break;
      end
    end;
    if k = 2 then
    begin
      for s := 2 to i div 2 do
      begin
        if i mod s = 0 then write(s, ' ');
      end;
      writeln;
    end;
  end;
end.