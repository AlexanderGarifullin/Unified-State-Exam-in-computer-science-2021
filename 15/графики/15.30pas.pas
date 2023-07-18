var a,  x,  y:integer;
  f:boolean;
begin
  for  a:= -100 to 1000 do
    begin
      f := false;
      for x := 1 to 1000 do 
        begin
          for y := 1 to 1000 do
            if (6*x+4*y <> 34) or (a > 5*x+3*y) and (a > 4*y+15*x-35) = false then
              f := true;
          if f then break;
        end;
      if not f then 
        begin
          writeln(a);
          break;
        end;
    end;
end.