{(№ 2590) (Д.Ф. Муфаззалов) Определите количество простых чисел в диапазоне [2; 3577000].}
function f(n:integer):boolean;
  var s : integer;
  begin
    f := true;
    for s := 2 to round(sqrt(n)) do
      if n mod s = 0 then
        begin
          f := false;
          break;
        end;
  end;
var c,  i :integer;
begin
  for i := 2 to 3577000 do 
    if f(i) then
      c += 1;
  writeln(c);    
end.  