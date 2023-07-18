var
  c1, c2: char;
  k, m: word;
  f: text;

begin
  assign(f, '1.txt');
  reset(f);
  read(f, c1);
  m := 0;
  k := 1;
  while not eof(f) do 
  begin
    
    c2 := c1;
    read(f, c1);
    if (c1 <> c2) then begin k := k + 1; if k > m then m := k; end
    else 
      k := 0;
  end;
  writeln(k, ' ', m);
end.