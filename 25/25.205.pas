var
  i, d, j, t: longint;

begin
  for i := 123456789 to 223456789 do
    if round(sqrt(i)) = sqrt(i) then
    begin
      d := 0;t := maxint;
      for j := 2 to round(sqrt(i)) - 1 do
        if i mod j = 0 then
        begin
          d += 1;
          if j < t then t := j;         
        end;
      if d = 1 then
        writeln(i, ' ', i div t);
    end;
end.