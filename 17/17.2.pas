var
  i, c: integer;

begin
  for i := 2495 to 7083 do 
    if (i mod 5 <> 0) and (i mod 9 <> 0) and
    ((i mod 256 = 26) or (i mod 256 = 31))  then
    begin
      c += 1;
      writeln(i);  
    end;  
  writeln(c);
end.  