var f :boolean;
    i,  x1, x2, c1, c2, c,  m:integer;
begin
  for i := 1000 to 70000 do
    begin
      x1 := i; x2:= i; f := true;
      c1 := 0;  c2 := 0;
      while x1 <> 0 do
        begin
          c1 += 1;
          x1 := x1 div 8;
          if (c1 > 5) and f then f := false;
        end;
      while (x2 <> 0) and f do
        begin
          c2 += 1;
          x2 := x2 div 5;
        end;  
      if (c1 = 5) and (c2 = 6) and (i mod 256 = 250)then
        begin
          c += 1;
          m := i;
        end;
    end;
    writeln(c,' ',m);
end.