var x,y,a,fl :integer;
begin
for a := 1 to 100 do 
  begin
  fl := 0;
    for x := 1 to 100 do 
      begin
        for y := 1 to 100 do 
          begin
            if ((y-x <> 10) or ( a<x) or (a <y)) = false then fl := 1;
          end;
        if fl = 1 then break;
      end;
      if fl = 0 then writeln (a);
  end;
end.