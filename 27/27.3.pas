program z;

var
  k, m, m7: integer;
  f: text;

begin;
  m := 0;m7 := 0;
  assign(f, '27986_B.txt');
  reset(f);
  while true do 
  begin
    readln(f, k);
    if k = 0 then break;
    if (k mod 7 <> 0) and (k > m) then m := k;
    if (k mod 7 = 0) and (k mod 49 <> 0) and (k > m7) 
      then m7 := k;
  end;
  m := m * m7;
  if m = 0 then writeln(1)
  else writeln(m);
end. 