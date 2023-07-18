var   s : string;
    n, max, i,a,b,r,r1 :integer;
begin 
assign (input,'24.txt');
readln(s);  max := 0;  n := 1;
for i := 1 to length(s)-1 do 
  begin
     val (s[i],a,r); val (s[i+1],b,r1);
    if (a mod 2) = (b mod 2) then 
      n += 1
      else 
      begin
        if n > max then max := n;
        n:= 1;
      end;
  end;
  writeln(max);
end.