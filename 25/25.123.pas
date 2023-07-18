var
  i, j, c, t, m: integer;

begin
  for i := 14312 downto 2031 do 
  begin
    c := 0;t := i; 
    while t > 0 do
    begin
      if t mod 11 = 2 then c += 1;
      t := t div 11;
    end;
    if c = 0 then 
    begin
      m := i;
      break;  
    end;   
  end;
  writeln(m);
end.