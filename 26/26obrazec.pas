program z26;
var t,s,n:integer;
a:array[0..1000] of integer;
begin
 assign(f,'C:\26.txt');
    reset(f);
    readln(f, s, n);
for i := 0 to n do readln(f, a[i]);
for i:=0 to n do
  for j:=i+1 to n do
    if (a[i]>a[j]) then 
      begin
      t:=a[i];
      a[i]:=a[j];
      a[j]:=t
      end;
ps:=0;
for i:=0 to n do
  begin
  if (ps+a[i])<=s then
    begin
    ps:=ps+a[i];
    last:=i;
    end;
  end;
fat:=a[last];
ps:=ps-fat;
for i:=(last+1) to n do
  begin
  if (ps+a[i])<=s then fat:=a[i];
  end
writeln (last+1,' ',fat);
end.