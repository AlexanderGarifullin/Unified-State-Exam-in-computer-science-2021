var d,i,j,a,b,c,mx,mn,md,m,n,t1,t2:integer;
    s:BIGinteger;
    dif:array[0..102] of integer;
    d2:array[0..102] of integer;
begin
  assign(input,'C:\Users\User\Desktop\27_B.txt');
  readln(n); 
  for i := 0 to 102 do dif[i] := 1000000;
  for i := 1 to n do
    begin
      readln(a,b,c);
      mx := max(a,max(b,c));
      mn := min(a,min(b,c));
      md := a+b+c-mx-mn;
      s += mx ;
      t1 := mx - mn;
      t2 := mx - md;
      for j := 0 to 102 do d2[j] := dif[j];
      for j := 0 to 102 do 
        begin
          if t1 + d2[j] < dif[(t1 + d2[j]) mod 103] then dif[(t1 + d2[j]) mod 103] := t1 + d2[j]; 
          if t2 + d2[j] < dif[(t2 + d2[j]) mod 103] then dif[(t2 + d2[j]) mod 103] := t2 + d2[j];     
        end;      
      if t1 < dif[t1 mod 103] then dif[t1 mod 103] := t1;
      if t2 < dif[t1 mod 103] then dif[t2 mod 103] := t2;
    end;
    d := 1000000;
    writeln(s);
  for j := 1 to 102 do 
    if dif[j] < d then d := dif[j] ;
  writeln(d);
  if s mod 103 <> 0 then writeln(s)
  else writeln(s-d);
end.