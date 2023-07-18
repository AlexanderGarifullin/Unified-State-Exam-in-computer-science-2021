function s(n:integer):integer;
  var j:integer;
  begin
    s := 0;
    for j := 2 to n div 2 do 
      if n mod j = 0 then
        s += j;
  end;
var i,c:integer;
begin
  for i := 350301 to 1000000 do
    begin
      if (s(i) <>0)and (s(i) mod 13 = 0)  then
        begin
          c += 1;
          if c > 6 then break;
          writeln(i,' ',s(i) div 13);
        end;
    end;
end.