var
  i1, i2,i,c: integer;
  s: string;

begin
  s := '1' + '0' * 75;
  while ('10' in s) or ('1' in s)  do 
  begin
    if ('10' in s) then
    begin
      i1 := pos('10', s);
      delete(s, i1, 2);
      insert('001', s, i1)
    end
    else if ('1' in s) then 
    begin
      i2 := pos('1', s);
      delete(s, i2, 1);
      insert('00', s, i2)
    end 
  end;  
  for i := 1 to length(s) do 
    if s[i] = '0' then
      c += 1;
  writeln(c);      
end.  