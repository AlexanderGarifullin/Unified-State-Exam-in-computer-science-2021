var
  x, y, w, z: integer;

begin
  for w := 0 to 1 do
    for x := 0 to 1 do 
      for y := 0 to 1 do 
        for z := 0 to 1 do 
          if (not(x = y) <= ((x and w) = z)) = false then 
            writeln(w, ' ', x, ' ', y, ' ', z);
  
end.