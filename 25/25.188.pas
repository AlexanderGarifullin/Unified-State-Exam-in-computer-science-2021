{	(№ 3441) (Е. Джобс) Для интервала [33333;55555] найдите числа, которые кратны
сумме своих простых делителей. В качестве ответа приведите числа, для которых 
сумма простых делителей больше 250, – сначала найденное число, затем сумму его
простых делителей. Примечание: само число в качестве делителя не учитывается.}
function f(n: integer): boolean;
var
  k: integer;
begin
  f := true;
  for k := 2 to round(sqrt(n)) do  
    if n mod k = 0 then
    begin
      f := false;
      break;
    end;
end;

var
  i,  s,  j: integer;

begin
  for i := 33333 to 55555 do
  begin
    s := 0;
    for j := 2 to i div 2 do
      if i mod j = 0 then
        if f(j) then
          s += j;
    if s > 250 then
      if i mod s = 0 then
        writeln(i, ' ', s);
  end;
end.  
