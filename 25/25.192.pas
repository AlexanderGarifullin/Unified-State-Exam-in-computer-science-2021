{(№ 3753) Найдите все натуральные числа, принадлежащие отрезку 
[113 000 000; 114 000 000], у которых ровно три различных чётных делителя. 
В ответе перечислите найденные числа в порядке возрастания, справа от каждого 
числа запишите его второй по величине нетривиальный делитель (не равный 1 и самому числу).}
var
  cd, i,  j,  del: integer;

begin
  for i := 113000000  to 114000000  do
  begin
    cd := 0;  del := 0;
    for j := 1 to round(sqrt(i)) do
    begin
      if i mod j = 0 then
      begin
        if (j = round(sqrt(i))) and (j mod 2 = 0) then begin del := j; cd += 1; end
              else
        begin
          if j mod 2 = 0 then begin del := j; cd += 1; end;
          if i div j mod 2 = 0 then begin del := j; cd += 1; end;
        end;
        if cd > 3 then break;    
      end;
    end;
    if cd = 3 then writeln(i, ' ', del);    
  end;
end.