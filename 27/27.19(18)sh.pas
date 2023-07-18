program m;

var
  f: text; 
  n, i, a, b, c, max, min, ave, s1, s2, s3, dif: longint;


begin
  assign(f, '27_B.txt');
  reset(f);
  readln(f, n);
  dif := 100000;
  for i := 1 to n do
  begin
    readln(f, a, b, c);
    if (a > b) and (a > c) then 
    begin
      max := a; 
      if b > c then
      begin
        min := c;
        ave := b; 
      end 
        else 
      begin
        min := b;
        ave := c;
      end;
    end    
    else if (b > a) and (b > c) then 
    begin
      max := b; 
      if a > c then  
      begin
        min := c; 
        ave := a; 
      end 
        else 
      begin
        min := a;
        ave := c;
      end;
    end   
    else if (c > a) and (c > b) then 
    begin
      max := c; 
      if a > b then  
      begin
        min := b; 
        ave := a; 
      end 
        else 
      begin
        min := a;
        ave := b;
      end;
    end;   
    s1 := s1 + max;
    s2 := s2 + min;
    s3 := s3 + ave;
    if ((max - ave) mod 2 = 1) and ((max - ave) < dif) then dif := max - ave;
    if ((max - min) mod 2 = 1) and ((max - min) < dif) then dif := max - min;
  end;
  if (s2 + s3) mod 2 = 1 then writeln(s1)
  else writeln(s1 - dif);
end.