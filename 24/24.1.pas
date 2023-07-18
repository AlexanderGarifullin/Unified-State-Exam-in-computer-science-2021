program m1;
var
f:text;
max,k:integer;
c1,c2:char;
begin
assign (f,'24_demo.txt');
reset(f);
c1:='0';
c2:='0';
k:=1;
max:=0;
while not eof(f) do begin 
          c2:=c1;
        read(f,c1);
        if (c1<>c2) and (c2<>'0') then begin 
        k:=k+1;
        end 
          else begin 
          if k>max then 
          max:=k;
          k:=1;
          end;
          end;
         if k > max then 
         max:=k;
         writeln(max);

end.