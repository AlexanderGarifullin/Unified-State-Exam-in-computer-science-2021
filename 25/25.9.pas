program m;

var
  k: 0..4;
  i: 95632..95700;
  s, j: 1..95700;

begin
  for i := 95632 to 95700 do
  begin
    k := 0;
    for s := 1 to i do 
      if not (odd(s)) and (i mod s = 0) then 
      begin
        k := k + 1;
        if k > 6 then break;
      end;
    if k = 6 then 
    begin
      for j := 1 to i do if not (odd(j)) and (i mod j = 0) then write(j, ' ');
      writeln;
    end;
  end;
end.