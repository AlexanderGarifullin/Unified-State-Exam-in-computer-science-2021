var a:array[1..10000] of integer; 
  f: text;
    i,j,s,n,t,sum,count:integer;
begin
  assign(f,'26.txt');
  reset(f);
  readln(f,s,n);
  for i:= 1 to n do readln(f,a[i]);
  for i := 1 to n do 
    for j := i + 1 to n do 
      if a[i] < a[j] then 
        begin
          t := a[j];
          a[j]:=a[i];
          a[i]:=t;
        end;
  for i:=1 to n do 
    if sum + a[i] <= s then 
      begin
        sum := sum + a[i];
        count +=1;
        t:= a[i];
      end;
  writeln(count,' ',t);
end.