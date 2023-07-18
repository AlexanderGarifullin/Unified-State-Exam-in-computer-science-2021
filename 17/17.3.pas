function f(n: integer): boolean;
var
  t: integer; 
  br: boolean;
begin
  br := true;
  t := n;f := true;
  while (t <> 0) and br do 
  begin
    if t mod 10 = 1 then
    begin
      br := false;
      f := false;
    end;
    t := t div 10;  
  end;
end;

function g(x: integer): boolean;
var
  a, min, max: integer;
begin
  a := x;max := 0;min := 100;
  while a <> 0 do 
  begin
    if a mod 10 >= max then max := a mod 10;
    if a mod 10 <= min then min := a mod 10;
    a := a div 10;
  end;
  if (max - min) < 4 then g := true
  else g := false;
end;

var
  count, i, s, j: integer;
  a: array[1..5272] of integer;

begin
  count := 0;
  for i := 1005 to 147870 do
    if f(i) then 
      if g(i) then
      begin
        count += 1;
        a[count] := i;
      end;
  for i := 1 to count do
    for j := i + 1 to count do
      if a[i] < a[j] then
      begin
        s := a[i];
        a[i] := a[j];
        a[j] := s;
      end;
  writeln(count, ' ', a[25]);        
end.