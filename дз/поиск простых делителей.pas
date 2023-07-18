{счет простых делителей,не считая 1 и самого числа}
var
  x, j, count, t, i, c: integer;

begin
  
  readln(i);j := 2;x := i; 
  while (x > 1) and (j < i div 2 + 2) do 
  begin
    while (x mod j = 0)   do
    begin
      x := x div j;
      t := j; 
      c := 1;
    end;
    j += 1;
    if (t <> 0) and (c = 1) then count += 1;
    c := 0;
  end;
  writeln(count);
end.