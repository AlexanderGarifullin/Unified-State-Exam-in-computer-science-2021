var y,z,w,x:boolean;
begin
  for x := false to true do
    for y := false to true do
      for z := false to true do
        for w := false to true do
          if ((y<=x)or not((x<=z)and(z<=x))and not(w)) = false then
            writeln (ord(z),' ',ord(x),' ',ord(w),' ',ord(y));           
end.