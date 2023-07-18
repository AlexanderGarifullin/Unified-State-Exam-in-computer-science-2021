var
  s: string;
  i2, i8: integer;

begin
  s := '8' * 70;
  while (pos('2222', s) <> 0) or (pos('8888', s) <> 0) do 
  begin
    i2 := pos('2222', s);
    i8 := pos('8888', s);
    if i2 <> 0 then
    begin
      delete(s, i2, 4);
      insert('88', s, i2)
    end
    else 
    begin
      delete(s, i8, 4);
      insert('22', s, i8)
    end;
  end;
  print(s); 
end.