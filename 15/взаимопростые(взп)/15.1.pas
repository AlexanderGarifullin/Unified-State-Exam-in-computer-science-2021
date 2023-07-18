function vzp(x, y: integer): boolean;
begin
  while x <> y do 
    if x > y then 
      x := x - y
    else 
      y := y - x;
  vzp := x = 1;
end;

var
  a, x, f: integer;

begin
  for a := 1 to 10000 do 
  begin
    f := 0; 
    for x := 1 to 10000 do 
      if ((not (vzp(x, 756))) <= not (vzp(x, a)) and 
        (not (vzp(x, a)) <= not (vzp(x, 756)))) = false then
      begin
        f := 1;
        break;
      end;
    if f = 0 then begin writeln(a);break; end;   
  end;
end.  