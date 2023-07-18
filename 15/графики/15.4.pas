var
  a, fl, x,t, y: integer;

begin
  for a := 1 to 1000 do 
  begin
    fl := 0; 
    
    for x := 0 to 100 do 
    begin
      for y := 0 to 100 do 
      begin
        if ((x > a) or (y > x) or (2 * y + x < 110)) = false then 
          fl := 1;
        if fl = 1 then break;
      end;
      if fl = 1 then break;  
    end;
    if fl = 0 then 
    begin
    t:=a;
    writeln(a);
    break;
    end;
  end;
writeln(t);  
end.