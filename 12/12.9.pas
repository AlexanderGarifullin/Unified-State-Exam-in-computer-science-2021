var s:string;
    i1,i2,i3:integer;
begin
  s := '1'*50+'2'*50+'3'*50;
  while ('21' in s) or ('31' in s) or ('23' in s) do
    begin
      if ('21' in s) then
        begin
          i1 := pos('21',s);
          delete(s,i1,2);
          insert('12',s,i1);
        end;
      if ('31' in s) then
        begin
          i2 := pos('31',s);
          delete(s,i2,2);
          insert('13',s,i2);
        end;
       if ('23' in s) then
        begin
          i3 := pos('23',s);
          delete(s,i3,2);
          insert('32',s,i3);
        end;   
    end;
    writeln(s[10],' ',s[90],' ', s[130]);
end.