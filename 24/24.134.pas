var s : string;
    i,  c:integer;
begin
  assign(input,'24.txt');
  readln(s);
  for i := 1 to length(s) - 1 do
    if (s[i] = '(') and (s[i+1] = ')') then
      begin
        c += 1;
        if c = 10000 then
          begin
            writeln(i);
            break;
          end;
      end;
end.