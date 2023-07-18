var
  s: string;
  max, i, count: longint;

begin
  assign(input, '24.txt');
  readln(s);
  count := 1;
  for i := 2 to length(s) do
  begin
    if s[i] = s[i - 1] then
    begin
      count += 1;
      if count > max then max := count;
    end
    else count := 1;  
  end;
  writeln(max); 
end.