function f(n:integer):integer;
begin
  if n <= 18 then f := n + 3
  else if n mod 3 = 0 then f := (n div 3) * f(n div 3) + n - 12
  else f := f(n-1) + n*n + 5;
end;
var c,  i,  t :integer;
flag : boolean;
begin
  c := 0;
  for i := 1 to 800 do 
    begin
      flag := true;
      t := f(i);
      while ( t <> 0) and flag do
        begin
          if t mod 10 mod 2  = 1 then flag := false;
          t := t div 10;
        end;
      if flag then c += 1;  
    end;
  writeln (c);    
end.