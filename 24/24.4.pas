Program p24;
var
f:text;
c1,c2,c3:char;
max,cur:integer;
begin
assign(f,'24_demo.txt');
reset(f);
c1:='0';
c2:='0';
c3:='0';
max:=0;
cur:=0;
  while not eof(f) do 
    begin
    c3:=c2;
    c2:=c1;
    read(f,c1);
    if (c1='X') and (c2='Y') and (c3='Z') then
      begin
        cur:=cur+1;
        if cur>max then max:=cur;
      end
      else 
      cur:=1
    end;
    writeln(max);
end.