var
  x, y, w, z: boolean;

begin
  for x := false to true do 
    for y := false to true do 
      for w := false to true do 
        for z := false to true do 
          if (x and not (y)) or (y = z) or not (w) = false then
            writeln(ord(w), ' ', ord(x), ' ', ord(y), ' ', ord(z));
end.