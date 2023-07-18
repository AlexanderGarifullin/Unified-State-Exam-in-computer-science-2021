var t: boolean;
    a,x:integer;
begin
  for a := 1 to 1000 do
    begin
      t := true;
      for x := 1 to 1000 do
        if (((x mod 4 <> 3) or (x mod 6 <> 1)) <= (x mod 36 <> a)) = false then
          begin
            t := false;
            break;
          end;
       if t then 
        begin
          writeln(a);
          break;
        end;
    end;
end.