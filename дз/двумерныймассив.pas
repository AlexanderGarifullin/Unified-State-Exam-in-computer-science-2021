const
  n = 5;
  m = 5;

var
  a: array[1..n, 1..m] of integer;
  i, s, j, t: integer;

begin
  randomize;
  for i := 1 to n do 
  begin
    for j := 1 to m do 
    begin
      a[i, j] := random(100);
      write(a[i, j], ' ');
    end;
    writeln;
  end;
  writeln;
  
  i := 1; 
  for s := 1 to m do 
  begin
    t := a[i + 1, s];
    a[i + 1, s] := a[i, s];
    a[i, s] := t;
  end;
 
  i := 4;
  for s := 1 to m do 
  begin
    t := a[i + 1, s];
    a[i + 1, s] := a[i, s];
    a[i, s] := t;
  end;
  
  for i := 1 to n do 
  begin
    for j := 1 to m do 
      write(a[i, j], ' ');
    writeln;
  end;
  
end.