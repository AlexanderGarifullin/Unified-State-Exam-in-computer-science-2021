var x,y,z,w:boolean;
begin
  for x := false to true do 
    for y := false to true do 
      for z := false to true do 
        for w := false to true do 
          if ((y<=x)or not((x<=z)and(z<=x))and not(w)) = false then
            writeln(ord(x),' ',ord(y),' ',ord(z),' ',ord(w));
end.