var a, fl, x, t:integer;
begin
  for a := 1 to 100 do 
    begin
      fl := 0;
      for x := 1 to 100 do 
        begin
        if ((x mod 18 =0)<=((not(x mod a =0))<=(not(x mod  12 = 0))))=false then fl := 1;
        if fl = 1 then break;
        end;
       if fl = 0 then t := a; 
    end;
  writeln(t);
end.