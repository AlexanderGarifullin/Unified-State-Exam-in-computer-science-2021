var s : string;
    c,  i,  m : integer;
begin
  assign(input,'24.txt');
  readln(s);  c := 1;
  for i := 2 to length(s) -1 do
    if ((s[i] = '1') or (s[i] = '2') or (s[i] = '3')) and
       ((s[i-1] = '1') or (s[i-1] = '2') or (s[i-1] = '3')) and
       ((s[i] = s[i-1]) or (s[i] > s[i-1])) then
          begin
            c += 1;
            if c > m then m := c;
          end
   else c := 1;   
writeln(m);   
end.