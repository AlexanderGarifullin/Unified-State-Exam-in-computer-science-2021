program m ;

var
  i: 312614..312651;
  j, s: 1..312651;
  k: 1..6;

begin
  for i := 312614 to 312651 do
  begin
    k := 0;
    for j := 1 to i  do
      if i mod j = 0 then
      begin
        k := k + 1;
        if k > 6 then break;
      end;
    if k = 6 then begin
      for s := 1 to i do
        if i mod s = 0 then write(s, ' ');
      writeln;
    end;
  end;
end.