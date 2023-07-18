var
  s: string;
  count, m, i: integer;

begin
  assign(input, '24.txt');
  readln(s);count := 1; 
  for i := 1 to length(s) - 1 do 
  begin
    if strtoint(s[i]) + strtoint(s[i + 1]) >= 10 then 
    begin
      count += 1;
      if count > m then m := count;
    end
    else count := 1;  
  end;
  writeln(m);    
end.