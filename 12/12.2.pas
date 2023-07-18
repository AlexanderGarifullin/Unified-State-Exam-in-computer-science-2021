var
  s: string;
  i1, i2, i3: integer;

begin
  s := '>' + '1' * 14 + '2' * 20 + '3' * 25;
  while (pos('>1', s) <> 0) or 
  (pos('>2', s) <> 0)       or 
  (pos('>3', s) <> 0)       do
  begin
    i1 := pos('>1', s);
    i2 := pos('>2', s);
    i3 := pos('>3', s);
    if i1 <> 0 then
    begin
      delete(s, i1, 2);
      insert('22>3', s, i1);
    end;
    if i2 <> 0 then
    begin
      delete(s, i2, 2);
      insert('2>', s, i2);
    end;  
    if i3 <> 0 then
    begin
      delete(s, i3, 2);
      insert('11>2', s, i3);
    end; 
  end;
  for i2 := 1 to length(s) do 
    writeln(s[i2]);
  
end.