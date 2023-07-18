var s:string;
    i1,i2,c,i:integer;
begin
  s := '23'*30+'1'*30;
  while ('21' in s) or ('23' in s) do 
    if ('21' in s) then
      begin
        i1 := pos('21',s);
        delete(s,i1,2);
        insert('11',s,i1);
      end
    else 
      begin
        i2 := pos('23',s);
        delete(s,i2,2);
        insert('21',s,i2);
      end;
      for i := 1 to length(s) do 
        if s[i] = '1' then c += 1;
        writeln(c);
end.