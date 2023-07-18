var
  x, y, z: boolean;

begin
  for x := false to true do 
    for y := false to true do
      for z := false to true do 
        if ((x and y) or (not (x) and not (z))) = true then
          writeln(ord(x), ' ', ord(y), ' ', ord(z));
end.