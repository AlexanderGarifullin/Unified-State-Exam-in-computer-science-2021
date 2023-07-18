{(№ 3779) Найдите все натуральные числа, принадлежащие отрезку
[78 000 000; 85 000 000], у которых ровно пять различных нечётных делителей
(количество чётных делителей может быть любым). В ответе перечислите найденные 
числа, справа от каждого числа запишите его наибольший нечётный делитель.}
var
  d, del, i, j: integer;

begin
  for i := 78000000 to 85000000 do
  begin
    d := 0;del := 0;
    for j := 1 to round(sqrt(i)) do
      if i mod j = 0 then
      begin
        if (j = round(sqrt(i))) and (j mod 2 = 1) then
        begin
          d += 1;
          if j > del then del := j;
        end
            else
        begin
          if (j mod 2 = 1) then
          begin
            d += 1;
            if j > del then del := j;
          end;
          if (i div j mod 2 = 1) then
          begin
            d += 1;
            if i div j > del then del := i div j;
          end;  
        end;
        if d > 5 then break;  
      end;
    if d = 5 then writeln(i, ' ', del);      
  end;
end.