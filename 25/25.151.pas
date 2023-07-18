{(№ 2591) (Д.Ф. Муфаззалов) Определите количество простых чисел в диапазоне [2; 200000].}
function f(n: integer): boolean;
var
  s: integer;
begin
  f := true;
  for s := 2 to round(sqrt(n)) do 
    if n mod s = 0 then
    begin
      f := false;
      break;
    end;
end;

var
  c,  i: integer;

begin
  c := 0;
  for i := 2 to 200000 do
    if f(i) then
      c += 1;
  writeln(c);    
end.  