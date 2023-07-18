var
  s: string;
  i, i1, i2, c: integer;

begin
  s := '1' + '5' * 25;
  while ('15' in s) or ('1' in s) do 
    if ('15' in s) then
    begin
      i2 := pos('15', s);
      delete(s, i2, 2);
      insert('5551', s, i2);
    end
    else 
    if ('1' in s) then 
    begin
      i1 := pos('1', s);
      delete(s, i1, 1);
      insert('5', s, i);
    end;
  for i := 1 to length(s) do 
    if s[i] = '5' then c += 1;
  writeln(c);
end.