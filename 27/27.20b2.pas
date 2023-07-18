var n,  i, i2, a,  b,  a0, b0, a20,  b20,  c,  m:integer;
begin
  assign(input,'27-20b.txt');
  readln(n);
  readln(a0,b0);  c := 1; m := 0;
  a20 := a0;  b20 := b0;
  for i := 2 to n do
    begin
      readln(a,b);
      if (i >= 50176) and (i <= 50180) then writeln('a=',a,' ''b=',b,' ','a0=',a0,' ''b0=',b0,' ''a20=',a20,' ''b20=',b20);
      if b0 = a then
        begin
          c += 1;
          if c > m then begin m := max(m,c); i2 := i;end;
          a0 := a;  b0 := b;
        end
      else if b0 = b then
        begin
          c += 1;
          if c > m then begin m := max(m,c); i2 := i;end;
          a0 := b; b0 := a;
        end
        
      else if b20 = a then
        begin
          c += 1;
         if c > m then begin m := max(m,c); i2 := i;end;
          a20 := a;  b20 := b;
        end
      else if b20 = b then
        begin
          c += 1;
          if c > m then begin m := max(m,c); i2 := i;end;
          a20 := b; b20 := a;
        end  
      else
        begin
          if c > m then begin m := max(m,c); i2 := i;end;
          c := 1;
          a0 := a;  b0 := b;
          a20 := b; b20 := a;
        end;
       if (i >= 50176) and (i <= 50180) then begin writeln('a=',a,' ''b=',b,' ','a0=',a0,' ''b0=',b0,' ''a20=',a20,' ''b20=',b20); writeln; end;
       //writeln;
    end;
  writeln(m,' ',i2);    
end.