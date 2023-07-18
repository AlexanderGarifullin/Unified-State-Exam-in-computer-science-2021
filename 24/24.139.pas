var s:string;
    c,mx, i:integer;
begin
  assign(input,'C:\Users\User\Desktop\24.txt');
  readln(s);
  mx := 0;
  c := 1;
  for i := 1 to length(s) - 1 do
    if (s[i] <> '1') and ((s[i+1] <> '2') or (s[i+1] <> '3')) then
      begin
        c += 1;
        if c > mx then mx := c;
      end
    else c := 1;
    writeln(mx);
end.    