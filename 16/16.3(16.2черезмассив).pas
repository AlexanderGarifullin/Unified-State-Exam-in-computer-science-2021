var 
  f, g:array[1..36] of integer; 
  n : integer;
  begin
    f[1] := 1;  g[1] := 1;
    for n := 2 to 36 do   
      begin
        f[n] := f[n-1] -2*g[n-1];
        g [n] := f[n-1] +g[n-1]+n;
      end;
    writeln(g[36]);
  end;