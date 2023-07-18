var
  i, x, t, z, c: longint;

begin
  for i := 65536 to 1048575 do
    if (i mod 16 mod 2 <> 0) then
    begin
      t := i;z := 1;
      while t > 0 do
      begin
        z := x;
        x := t div 16;
        t := t div 16;
      end;
      if z <> 1 then c += 1;  
    end;
  writeln(c);
end.