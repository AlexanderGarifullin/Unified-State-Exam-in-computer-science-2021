var a1, a,  b1, b,  mx, c,t,i,n:integer;
begin
  //assign(input,'27-20b.txt');
  readln(n);
  a1 := 0;  b1 := 0;  mx := 0;  c:= 1;
  for i := 1 to n do
    begin
      readln(a,b);
      if (b1 = a)  then
        begin
          c += 1;
          mx := max(mx,c);
          t := a1;  a1 := a;  a := t;
          t := b1;  b1 := b;  b := t;
        end
      else if b1 = b then
        begin
          c += 1;
          mx := max(mx,c);
          t := a1;  a1 := b;  b := t;
          t := b1;  b1 := a;  a := t;
        end
      else 
        begin
          c := 1;
          t := a1;  a1 := b;  b := t;
          t := b1;  b1 := a;  a := t;
        end;
    end;
  writeln(mx);  
end.