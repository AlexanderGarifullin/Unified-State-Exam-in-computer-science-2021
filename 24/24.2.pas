program p24;
var
f:text ;
max,cur:integer;
c1,c2:char;
begin
assign (f,'24_demo.txt');
reset (f);
c1:='0';
c2:='0';
max:=1;
cur:=1;
while not eof(f)do
  begin
  c2:=c1;
  read(f,c1);
     if c1=c2 then  
     begin 
     cur:=cur+1;
      end
    else
     begin 
    if cur>max
    then max:=cur;
    cur:=1;
     end;
  end;     
writeln(max);
end. 