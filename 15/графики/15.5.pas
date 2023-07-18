var
  a, m, n, fl, t: integer;

begin
  for a := 1 to 1000 do   
  begin
    fl := 0;
    for m := 0 to 100 do  
    begin
      for n := 0 to 100 do 
      begin
        if ((3 * m + 4 * n > 66) or (m <= a) or (n < a)) = false then
          fl := 1;
        if fl = 1 then break;  
      end;
      if fl = 1 then break;
    end;
    if fl = 0 then 
    begin
      writeln(a);
      break;
    end;
  end;
  writeln(t);
end.