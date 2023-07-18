const
  n = 10;

var
  a: array[1..n] of integer;
  i: integer;

procedure Qsort(L, R: integer);
var
  nl, nr, t, bar: integer;
begin
  nl := L;
  nr := R;
  bar := a[(L + R) div 2];   
  repeat
    while a[nl] < bar do nl += 1;
    while a[nr] > bar do nr -= 1;
    if nl <= nr then 
    begin
      t := a[nl];a[nl] := a[nr];a[nr] := t;
      nl += 1;nr -= 1;
    end;
    
  until nl > nr;
  
  if L < nr then Qsort(L, nr);
  if nl < R then Qsort(nl, R);
end;

begin
  for i := 1 to n do a[i] := random(n);
  Qsort(1, n);
  writeln(a);
end.

