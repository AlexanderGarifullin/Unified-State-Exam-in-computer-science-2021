program m;

var
  n, m71, m72, m1, m2, max1, max2, x: integer;
  f: text;

begin
  m71 := 0;m72 := 0;m1 := 0;m2 := 0;max1 := 0;max2 := 0;
  assign(f, '28129_B.txt');
  reset(f);
  readln(f, n);
  while not eof(f) do
  begin
    readln(f, x);
    if (x mod 7 = 0) and (x mod 160 = m71 mod 160) and (x > m71) then
      m71 := x
    else if (x mod 7 = 0) and (x mod 160 <> m71 mod 160) and (x > m71) then
    begin
      m72 := m71;
      m71 := x;
    end
    else if (x mod 7 = 0) and (x mod 160 <> m71 mod 160) and (x > m72) then
      m72 := x
    else if (x mod 7 <> 0) and (x mod 160 = m1 mod 160) and (x > m1) then
      m1 := x
    else if (x mod 7 <> 0) and (x mod 160 <> m1 mod 160) and (x > m1) then
    begin
      m2 := m1;
      m1 := x;
    end
    else if (x mod 7 <> 0) and (x mod 160 <> m1 mod 160) and (x > m2) then
      m2 := x;
  end;  
  if (m71 = 0) and (m72 = 0 ) then
    writeln(0, ' ', 0)
  else if (m72 = 0) and (m2 = 0) and (m71 mod 160 = m1 mod 160) then
    writeln(0, ' ', 0)
  else
  begin
    if (m71 + m72) > (max1 + max2) then
    begin
      max1 := m71;
      max2 := m72;
    end;
    if ((m71 + m1) > (max1 + max2)) and (m71 mod 160 <> m1 mod 160) then
    begin
      max1 := m71;
      max2 := m1;
    end;  
    if ((m71 + m2) > (max1 + max2)) and (m71 mod 160 <> m2 mod 160) then
    begin
      max1 := m71;
      max2 := m2;
    end;  
    writeln(max1, ' ', max2);
  end;  
end.  