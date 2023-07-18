var
  f: array[-50..50] of integer;
  n: integer;

begin
  f[0] := 1;
  for n := 1 to 50 do 
  begin
    f[n] := 2 * f[1 - n] + 3 * f[n - 1] + 2;
    f[-n] := -f[n];
  end;
  writeln(f[50]);  
end. //6