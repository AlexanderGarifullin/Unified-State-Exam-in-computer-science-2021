var
  st, fn, fn1, st1, i, j, count, max_del: integer;

begin
  st := 106732567;
  fn := 152673836;
  st1 := round(st ** 0.5);
  if st1 * st1 < st then 
    st1 += 1;
  fn1 := round(fn ** 0.5);
  for i := st1 to fn1 do 
  begin
    count := 0;
    max_del := 0;
    for j := 2 to i - 1 do 
      if i mod j = 0 then 
      begin
        count += 1;
        if max_del = 0 then 
          max_del := (i * i) div j;
      end;
    if count = 1 then 
      writeln(i * i, ' ', max_del);
  end;
end.