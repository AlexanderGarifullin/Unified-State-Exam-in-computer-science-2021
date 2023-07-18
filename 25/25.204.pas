function f(n:integer):boolean;
var s:integer;
begin
  f := true;
  for s := 2 to round(sqrt(n)) do
    if n mod s = 0 then
      begin
        f := false;
        break;        
      end;
end;
var c,d,  i, a, j,  t:longint;
begin
  for i := 310001 to 1000000 do
    begin
      a := 0; d := 0;
      for j := 2 to i div 2 do
        if i mod j = 0 then
          if f(j) then 
            begin
              a += j;
              d += 1;  
            end;
      if a <> 0 then
        begin
          t := a; 
          a := t div d;
          if (a mod 6 = 0) and (a mod 10 <> 4) then
            begin
              c += 1;
              writeln (i,' ',a); 
            end;
        end;
              if c  > 5 then break;
    end;
end.