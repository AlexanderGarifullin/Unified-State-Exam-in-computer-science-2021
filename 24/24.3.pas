program p24;
var c1,c2:char;
cur,max:integer;
f:text;
begin
assign(f,'24_demo.txt');
reset (f);
c1:='0';
cur:=1;
max:=1;
c2:='0';
  while not Eof (f) do 
  begin
  c2:=c1;
  read(f,c1);
    if (c2=c1) and (c2='Z')then 
    begin
    cur:=cur+1;
     if cur>max then max:=cur;
    end
     else 
    cur:=1;
   end;
writeln(max);
end.