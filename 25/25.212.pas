function f(n:integer):boolean;
  var s:integer;
  begin
    f := false;
    for s := 2 to round(sqrt(n)) do 
      if n mod s = 0 then
        begin
          f := true;
          break;
        end;
  end;
var i,mx,j,c:integer;
begin
  for i := 550001 to 1000000 do
    begin
      mx := 0;
      for j := 2 to round(sqrt(i)) do
        if i mod j = 0 then
          begin
            mx := i div j;
            break;
          end;
      if f(mx) then
        begin
          c += 1;
          if c > 6 then break;
          writeln(i,' ',mx);
        end;
    end;
end.