function f(n: integer): boolean;
var
  k: integer;
begin
  f := true;
  for k := 2 to round(sqrt(n)) do 
    if n mod k = 0 then
    begin
      f := false;
      break;
    end;
end;

var
  i, c, m, p, min, m1, j: integer;
  t: boolean;

begin
  for i := 485617 to 529678 do  
  begin
    c := 0;p := 1;m1 := 0;m := 0;t := true;min := 1000000;
    for j := 2 to i div 2 do
      if i mod j = 0 then 
        if f(j) then
        begin
          if j < min then min := j;
          m1 := m;
          m := j;
          if (m1 <> 0) and (m1 mod 10 <> m mod 10) then t := false;
          c += 1;             
          p *= j;
          if c > 3 then break;
          if not t then break;
          if p > i then break;
        end;
    if (c = 3) and (t) and (p = i) then
      if (m - min) < 100 then writeln(i, ' ', m - min);  
  end;
end.