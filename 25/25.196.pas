{	(№ 3780) Найдите все натуральные числа, принадлежащие отрезку
[63 000 000; 75 000 000], у которых ровно пять различных нечётных делителей 
(количество чётных делителей может быть любым). В ответе перечислите найденные 
числа, справа от каждого числа запишите его наибольший нечётный делитель.}
var
  i, c, d, j: integer;

begin
  for i := 63000000 to 75000000 do
  begin
    c := 0;d := 0;
    for j := 1 to round(sqrt(i)) do
      if i mod j = 0 then
      begin
        if (j = round(sqrt(i))) and (j mod 2 = 1) then 
        begin
          c += 1;
          if j > d then d := j;
        end
            else
        begin
          if (j mod 2 = 1) then
          begin
            c += 1;
            if j > d then d := j;
          end;
          if (i div j mod 2 = 1) then
          begin
            c += 1;
            if i div j > d then d := i div j;
          end;
        end;
        if c > 5 then break;
      end;
    if c = 5 then writeln(i, ' ', d);    
  end;
end.