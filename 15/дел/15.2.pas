function f(x:integer; a:integer):boolean;
  begin
    f := ((( x mod 36 = 0 )and ( x mod 42 = 0)) <= (x mod a =0) and (a*(a-25)<25*(a+200))); 
  end;
var a,x,flag:integer;
begin
  for a := 1 to 100 do 
    begin
      flag := 0;
      for x := 1 to 1000 do 
        begin
          if f(x,a) = false then 
            flag := 1;
        end;
       if flag = 0 then writeln (a); 
    end;
end.