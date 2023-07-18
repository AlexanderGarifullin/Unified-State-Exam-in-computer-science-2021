var x,y,z,w:boolean;
begin
  for x := false to true do
    for y := false to true do 
      for z := false to true do 
        for w := false to true do 
          if not(z and not(w)) or ((z <= w) = (x <= y)) = false then 
            writeln (ord(z),' ',ord(x),' ',ord(w),' ',ord(y));
end.