﻿var s :string;
  c,m,i:integer;
begin
  assign(input,'C:\Users\User\Desktop\24.txt');
  readln(s);
  c := 0;
  m := 0;
  for i := 1 to length(s) do
    if (s[i] <> 'G') and  (s[i] <> 'W') and (s[i] <> 'P') then
      begin
        c += 1;
        m := max(c,m);
      end
    else c := 0;
    writeln(m);
end.