function f(n: integer): boolean;
var
  k: integer;
begin
  f := true;
  for k := 2 to n div 2 do 
    if n mod k = 0 then
    begin
      f := false;
      break;
    end;
end;

var
  i, s, c, j: integer;

begin
  c := 1;
  for i := 500000 downto 1 do 
  begin
    s := 0;
    for j := 2 to i div 2 do
      if i mod j = 0 then
        if f(j) then
          s += j;
    if (s <> 0) and (s mod 10 = 0) and (c < 8) then
    begin
      c += 1;
      writeln(i, ' ', s);
    end;
    if c > 7 then break;  
  end;
end.