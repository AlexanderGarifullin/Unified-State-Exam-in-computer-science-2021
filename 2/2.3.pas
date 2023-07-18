var
  x, y, z, w: boolean;

begin
  for w := false to true  do 
    for x := false to true  do 
      for y := false to true  do 
        for z := false to true  do 
          if ((w and y) or ((x <= w) = (y <= z))) = false then 
            writeln(ord(w), ' ', ord(x), ' ', ord(y), ' ', ord(z));
end.