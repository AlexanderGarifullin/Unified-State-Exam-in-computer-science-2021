{(№ 3751) Найдите все натуральные числа, принадлежащие отрезку 
[100 000 000; 101 000 000], у которых ровно три различных чётных делителя.
В ответе перечислите найденные числа в порядке возрастания, справа от каждого
числа запишите его второй по величине нетривиальный делитель (не равный 1 и 
самому числу).}
var
  i, cd, j, del: integer;

begin
  for i := 100000000 to 101000000 do
  begin
    cd := 0;  del := 0;
    for j := 1 to round(sqrt(i)) do 
      if i mod j = 0 then
      begin
        if j = round(sqrt(i)) then  cd += 1
            else 
        begin
          if j mod 2 = 0 then cd += 1;
          if i div j mod 2 = 0 then cd += 1;
          if (j < i) and (j > 1) then del := j;
          if cd > 3 then break;
        end;
      end;
    if cd = 3 then writeln(i, ' ', del);
  end;
end.
