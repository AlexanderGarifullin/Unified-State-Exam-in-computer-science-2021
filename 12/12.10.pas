var s:string;
    c,i1,i,i2:integer;
begin
  s := '453'*30;
  while ('43' in s) or ('53' in s) do
  begin
    if ('43' in s) then
      begin
        i1 := pos('43',s);
        delete(s,i1,2);
        insert('33',s,i1);
      end
     else 
      begin
        i2 := pos('53',s);
        delete(s,i2,2);
        insert('433',s,i2);
      end;
      end;

      for i := 1 to length(s) do
        if s[i] = '3' then c += 1;
      writeln(c);
end.