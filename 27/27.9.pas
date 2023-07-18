program m;

var
  f: text;
  a, n, m0, m170, m1, m171: longint;

begin
  m170 := 0;
  m0 := 0;
  m1 := 0;
  m171 := 0;
  assign(f, '27991_B.txt');
  reset(f);
  readln(f, n);
  while not eof(f) do
  begin
    readln(f, a);
    if (a mod 17 = 0 ) and (a mod 2 = 0) and (a > m170) then 
    begin
      if m170 > m0 then m0 := m170;
      m170 := a;
    end
    else if (a mod 17 = 0) and (a mod 2 = 1) and (a >= m171) then begin
      if m171 > m1 then m1 := m171;
      m171 := a;
    end  
    else if (a mod 17 > 0) and (a mod 2 = 0) and (a > m0) then m0 := a
    else if (a mod 17 > 0) and (a mod 2 = 1) and (a > m1) then m1 := a;
  end;
  if (m0 = 0) or (m170 = 0 ) then begin
    m0 := 0;
    m170 := 0;
  end;
  if (m1 = 0) or (m171 = 0 ) then begin
    m1 := 0;
    m171 := 0;
  end;
  if (m0 + m170) < (m1 + m171) then writeln(m1, ' ', m171)
  else writeln(m0, ' ', m170);
end.
