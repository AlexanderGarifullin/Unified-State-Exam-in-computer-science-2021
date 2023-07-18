var
  i, k, j: longint;
begin
  for i := 35000000 to 40000000 do 
  begin
  
    if i mod 2 = 0 then k := 1 
      else k:= 2; 
    
      if i mod round(sqrt(i)) = 0 then
        if round(sqrt(i)) mod 2 = 1 then k += 1;      
    
    for j := 2 to round(sqrt(i))  -1  do
      if i mod j = 0 then 
        begin
          if j mod 2 = 1 then k += 1; 
          if i div j mod 2 = 1 then k += 1; 
          if k > 5 then break;
        end;
    if k = 5 then writeln (i,' ',k);
  end;
end.