var i,  c,  s,  j,  mx,mn:integer;
begin 
  c := 1;
  for i := 250200 to 1000000 do
    begin
      s := 0;
      mn := maxint;
      mx := 0;
      for j := 2 to i div 2 do 
       if i mod j = 0 then
        begin
          mn := min(mn,j);
          mx := max(mx,j);
        end;
      s += mx + mn;
      if s mod 123 = 17 then 
        begin
          writeln(i,' ',s);
          c += 1;
        end;
     if c > 5 then break;   
    end;
end.