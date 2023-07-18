program m;

var
  i, k, j, s: longint;

begin
  for i := 210235 to 210300 do
  begin
    k := 0;
    for j := 2 to i div 2  do
      if i mod j = 0 then
      begin
        k := k + 1;
        if k > 4 then break;
      end;
    if k = 4 then
    begin
      for s := 2 to i div 2 do 
        if i mod s = 0 then write(s, ' ');
      writeln;
    end;
  end;
end.