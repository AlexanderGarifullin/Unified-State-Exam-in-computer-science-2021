var
  s: string;
  i1, i2, i, count: integer;

begin
  s := '321' * 50;
  while ('31' in s) or ('32' in s) do
    if ('32' in s) then
    begin
      i1 := pos('32', s);
      delete(s, i1, 2);
      insert('3', s, i1);
    end
    else 
    begin
      i2 := pos('31', s);
      delete(s, i2, 2);
      insert('11', s, i2);
    end;
  count := 0;
  for i := 1 to length(s) do
    if s[i] = '1' then count += 1;
  writeln(count);  
end.