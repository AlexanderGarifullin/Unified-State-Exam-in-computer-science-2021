program ml;

var
  d, i, s, k: longint;

begin
  d := 0;
  for i := 245690 to 245756 do
  begin
    d := d + 1;
    k := 0;
    for s := 1 to i do
      if i mod s = 0 then 
      begin
        k := k + 1;
        if k > 2 then break;
      end;
    if k = 2 then 
      writeln(d, ' ', i);
  end;
end.