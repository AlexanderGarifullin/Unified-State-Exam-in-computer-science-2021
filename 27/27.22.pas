var 
  even:array[0..4] of integer;
  odd:array[0..4] of integer;
  f:text;
  n,z,i,s:integer;
begin
  assign(f,'27-B.txt');
  reset(f);
  readln(f,n); 
  s:= 0;
  for i:= 1 to n  do 
    begin
      readln(f,z);
      if z mod 2 = 0 then even[z mod 5] += 1
        else odd[z mod 5] += 1;
    end; 
  s += even[0]*(even[0]-1) div 2 + odd[0]*(odd[0]-1) div 2 + odd[1]*odd[4] + even[1]*even[4]+odd[2]*odd[3] + even[2]*even[3];
  writeln(s);
end.