function f(n:integer):boolean;
var s :integer;
begin
  f := true;
  for s := 2 to round(sqrt(n))do
    if n mod s = 0 then
      begin
        f := false;
        break;
      end;
end;
var i,  j:integer;
begin
  for i := 6638225 to 6638322 do
    if f(i) then
      begin
        j += 1;
        writeln(j,' ',i);
      end;
end.