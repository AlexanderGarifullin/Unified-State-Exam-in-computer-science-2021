var
  x, f, t, a: integer;

begin
  for a := 1 to 10000 do 
  begin
    f := 0;
    for x := 1 to 100000 do
    begin
      if ((((x and 13 <> 0) or (x and 39 = 0)) <= 
      (x and 13 <> 0)) or ((x and a = 0) and (x and 13 = 0))) = false then
        f := 1;
      if f = 1 then break;  
    end;
    if f = 0 then t := a;
  end;
  writeln(t);  
end.