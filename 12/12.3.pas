var
  s: string;
  i, i1, i2, c: integer;

begin
  s := '32' * 30 + '1' * 30;
  while ('31' in s) or ('32' in s) do 
    if ('32' in s) then
    begin
      i2 := pos('32', s);
      delete(s, i2, 2);
      insert('311', s, i2);        
    end
    else 
    begin
      i1 := pos('31', s);
      delete(s, i1, 2);
      insert('11', s, i1);
    end;  
  for i := 1 to length(s) do 
    if s[i] = '1' then c += 1;
  writeln(c);
end.