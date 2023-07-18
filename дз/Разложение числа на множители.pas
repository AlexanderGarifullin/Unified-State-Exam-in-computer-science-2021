{Разложение на простые множители}
var x,d:integer;
begin
readln(x);
d:=2;
while (x <> 1) do
  begin
    if ( x mod d = 0) then 
      begin
        write (d,' ');
        x := x div d;
      end;
    d += 1;    
  end;
end.
