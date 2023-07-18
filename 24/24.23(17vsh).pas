program m;

var
  s: string;
  max, t, predmax, i, cur: longint;

begin
  assign(input, '24.txt');
  readln(s);
  predmax := 0;max := 0;cur := 0;
  for i := 1 to length(s) do
  begin
    if s[i] = 'C' then
    begin
      cur := cur + 1;
      if cur > max then 
        max := cur;
    end
    else   
    begin
      if max > predmax  then  
        t := predmax;
      predmax := max;
      cur := 0;
    end;
  end;
  writeln(max - t);
end.
