program m;

var
  i, count, s, j: longint;

begin
  for i := 81234 to 134689 do
  begin
    count := 0;
    for j := 2 to i div 2 do
      if i mod j = 0 then
      begin
        count += 1;
        if count > 3 then break;
      end;
    if count = 3 then
    begin
      for s := 2 to i div 2 do 
        if i mod s = 0 then write(s, ' ');
      writeln;
    end;
  end;
end.