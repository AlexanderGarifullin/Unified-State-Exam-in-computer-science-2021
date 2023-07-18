var i1,i2,i,c1,c2,c3:integer;
s,s0:string;
begin
  s := '9992'*33+'2'*15+'1'*14;
  for i := 1 to length(s) do 
    if s[i] = '9' then c3 += 1
    else if s[i] = '2' then c2 += 1
    else if s[i] = '1' then c1 += 1;
    writeln (c1,' ',c2,' ',c3);
    while ('999' in s) or ('22' in s) do
    if '999' in s then
      begin
        i1 := pos('999',s);
        delete(s,i1,3);
        insert('12',s,i1);
      end
    else 
      begin
        i2 := pos('22',s);
        delete(s,i2,2);
        insert('1',s,i2);
      end;
      c1 := 0;
   for i := 1 to length(s) do 
    if s[i] = '1' then c1 += 1 ; 
    writeln(c1);
end.