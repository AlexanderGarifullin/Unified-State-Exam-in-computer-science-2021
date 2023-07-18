var
  x, z, w, y: boolean;

begin
  for w := false to true do
    for x := false to true do 
      for y := false to true do 
        for z := false to true do 
          if ((y <= x) or (not (z) and w)) = (w = x) = false then
            writeln(ord(w), ' ', ord(x), ' ', ord(y), ' ', ord(z));
end.