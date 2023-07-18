var x,y,  z,  w:boolean;
begin
  for x := false to true do
    for y := false to true do
      for z := false to true do
        for w := false to true do
          if (x <= y and not(z)) or w = false then
            writeln(ord(y),' ',ord(w),' ',ord(x),' ',ord(z));
end.