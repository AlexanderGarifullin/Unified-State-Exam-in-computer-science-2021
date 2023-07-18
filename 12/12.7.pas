var
  i1, i2: integer;
  s: string;

begin
  s := '2' * 282;
  while ('222' in s) or ('6666' in s) do 
  begin
    if ('222' in s) then
    begin
      i1 := pos('222', s);
      delete(s, i1, 3);
      insert('6', s, i1)
    end
    else
    begin
      i2 := pos('6666', s);
      delete(s, i2, 4);
      insert('2', s, i2)
    end;
   end; 
  writeln(s);      
end.  