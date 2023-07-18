program p24;
var f:text;
c1,c2:char;
cur,max:integer;
begin
assign (f,'24_demo.txt');
reset(f);
cur:=1;
max:=1;
c1:='0';
c2:='0';
while not eof(f) do 
   begin
    c2:=c1;
    read(f,c1);
      if (c2<>c1) and (c2<>'0') then 
        begin
        cur:=cur+1;
        end
      else
        begin
          if cur>max then max:=cur;
        cur:=1;
        end;
    end;
  if cur > max then max:=cur;
  writeln(max);
end.