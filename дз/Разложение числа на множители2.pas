{Разложение на простые множители}
var x,i:integer;
begin

readln(x);
for i := 2 to x do  
  if (x <> 1 ) and (x mod i =0) then
      begin
        write (i,' ');
        x := x div i;
      end;
end.
