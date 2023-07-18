var
  i, t, d, pr, s, j, count, zb: integer;

begin
  for i := 1040000 to 1143210 do
  begin
    s := 0;d := 0;
    t := i;count := 0;zb := 0;
    for j := 2 to i do
      if (t mod j = 0) then 
      begin
        d := j;//writeln('d=', d);
        break;
      end;
    for s := d + 1 to t  do  
      if (t <> 1) and (t mod s = 0) then
      begin
        t := t div s;
        
        pr := d;
        d := s;
        if(d - pr) = 2 then zb += 1;
        count += 1; //writeln('count=', count, 'd=', d, 'pr=', pr,'zb = ',zb); 
      end;
    if (zb = count) and (count <> 0)
      then writeln(i, ' ', d);
  end;
  writeln ('the end');
end.