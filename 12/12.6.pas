var
  i1, i2: integer;
  s: string;

begin
  s := '6' * 239;
  while ('2222' in s) or ('666' in s) do 
    if ('2222' in s) then
    begin
      i1 := pos('2222', s);
      delete(s, i1, 4);
      insert('6', s, i1)
    end
    else
    begin
      i2 := pos('666', s);
      delete(s, i2, 3);
      insert('2', s, i2)
    end;
  writeln(s);      
end.  