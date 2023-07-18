function f(n:integer):boolean;
  var s :integer;
  begin
    f := false;
    for s := 2 to round(sqrt(n)) do
      if n mod s = 0 then
        begin
          f := true;
          break;
        end;
  end;
var i,j,x,c:integer;
begin
  for i := 650001 to 1000000 do
    begin
      x := 0;
      for j := 2 to round(sqrt(i)) do
        if i mod j = 0 then
          begin
            x := i div j; 
            break;
          end;
      if f(x) then
        begin
          c += 1;
          if c > 6 then break;
          writeln(i,' ',x);
        end;
    end;
end.  