﻿function f(n:integer):boolean;
var s :integer;
begin
  f := true;
  for s := 2 to round(sqrt(n)) do
    if n mod s = 0 then
      begin
        f := false;
        break;
      end;
end;
var i,  j,  s,  c:integer;
begin
  for i := 750001 to 1000000 do
    begin
      s := 0;
      for j := 2 to round(sqrt(i)) do
        if i mod j = 0 then
          if j <> i div j then
            begin
              if f(j) then s += j; 
              if f(i div j) then s += i div j; 
            end
          else if f(j) then s += j;  
      if (s <> 0) and (s mod 7 = 0) then
        begin
          c += 1;
          if c > 5 then break;
          writeln(i,' ',s);
        end;
    end;
end.