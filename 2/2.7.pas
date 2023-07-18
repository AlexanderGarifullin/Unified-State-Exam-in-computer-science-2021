var x,  y,  z,  w:boolean;
begin
  for x := false to true do 
   for y := false to true do 
    for z := false to true do 
      for w := false to true do 
        if (((x<=z)and(z<=w))or(y=(x or z))) = false then
          writeln (ord(y),' ',ord(z),' ',ord(w),' ',ord(x));
end.