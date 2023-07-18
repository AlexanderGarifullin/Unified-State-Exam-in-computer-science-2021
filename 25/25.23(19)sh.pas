program m;

var
  i, s, maxk, min, k, j: longint;

begin
  maxk := 0;
  min := 10000000;
  for i := 84052 to 84130 do 
  begin
    k := 0;
    for j := 1 to i do
      if i mod j = 0 then
      begin
        k += 1;
        if k > maxk  then   
          maxk := k;      
      end;
  end;
  for i := 84052 to 84130 do
  begin
    k := 0;
    for s := 1 to i do
      if i mod s = 0 then
        k += 1;
    if k = maxk then
      if i < min then min := i;  
  end;
  writeln(maxk, ' ', min);      
end.