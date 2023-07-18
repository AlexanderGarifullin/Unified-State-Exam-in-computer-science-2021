var
  a, fl, x, t: integer;

begin
  for a := 1 to 1000 do 
  begin
    fl := 0;
    for x := 1 to 1000 do 
    begin
      if (((not (x mod a = 0)) and (x mod 21 = 0) )  <=  (not (x mod 14 = 0))  ) = false then fl := 1;
      if fl = 1 then break;
    end;
    if fl = 0 then t := a;
  end;
  writeln(t);
end.