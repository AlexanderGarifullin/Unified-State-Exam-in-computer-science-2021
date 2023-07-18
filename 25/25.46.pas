var i,count,s,j,z:longint;
begin
  for i:= 135790 to 163228 do
    begin
      s:=0; count :=0;
      for j := 2 to i div 2 do
        if i mod j = 0 then 
          begin
            s += j;
            count += 1;
         end;  
      if s > 460000 then 
        writeln (count,' ',s);
 end;
end.