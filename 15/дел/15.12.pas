var m,a,x:integer;
  f:boolean;
begin
  for a := 1 to 1000 do
    begin
      f := true;
      for x := 1  to 1000 do
        if ((not(x mod a = 0)) <= ((x mod 18 = 0) <= (not(x mod 81 = 0)))) = false then
          begin
            f := false;
            break;
          end;
      if f then
        m := a;
    end;
  writeln(m);
end.