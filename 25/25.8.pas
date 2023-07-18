program m;

var
  i: 201455..201470;
  k: 0..4;
  s, j: 1..201470;

begin
  for i := 201455 to 201470 do
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