function f(n:integer):integer;
begin
  if n > 30 then f := n*n+5*n+4
  else if n mod 2 = 0 then f := f(n+1)+3*f(n+4)
  else f := 2*f(n+2)+f(n+5);
end;  
var i,s,x,k:integer;
begin
  for i := 1 to 1000 do
    begin
      s := 0; x := f(i);
      while x <> 0 do
        begin
          s += x mod 10;
          x := x div 10;
        end;
       if s = 27 then k += 1; 
    end;
  writeln(k);  
end.