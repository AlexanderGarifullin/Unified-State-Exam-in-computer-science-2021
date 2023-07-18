var
  x, z, w, y: boolean;

begin
  for w := false to true do
    for x := false to true do 
      for y := false to true do 
        for z := false to true do 
          if (x = not (y)) <= ((x and w) = z) = false then
            writeln(ord(w), ' ', ord(x), ' ', ord(y), ' ', ord(z));
end.