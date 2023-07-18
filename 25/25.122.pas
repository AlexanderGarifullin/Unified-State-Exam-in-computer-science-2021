var
  d, i, j, m, t: integer;

begin
  for i := 286564 to 287270 do 
  begin
    d := 0;
    for j := 1 to i  do   
      if i mod j = 0 then 
      begin
        d += 1;
        if d >= m then 
        begin
          m := d;
          t := i;
        end;
      end;
  end;
  write(m, ' ');
  d := 0;
  for j := t downto 1 do
    if i mod j = 0 then 
    begin
      write(j, ' ');
      break;
    end;
  write(t);
end.