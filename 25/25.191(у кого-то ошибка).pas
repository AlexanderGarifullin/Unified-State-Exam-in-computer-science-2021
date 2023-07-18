{(№ 3752) Найдите все натуральные числа, принадлежащие отрезку 
[103 000 000; 104 000 000], у которых ровно три различных чётных делителя.
В ответе перечислите найденные числа в порядке возрастания, справа от каждого
числа запишите его второй по величине нетривиальный делитель (не равный 1 и
самому числу).}
var
  del, cd, i, j: integer;

begin
  for i := 103000000   to 104000000   do 
  begin
    cd := 0;  del := 0;
    for j := 1 to round(sqrt(i)) do
      if i mod j = 0 then
      begin
        if (j = round(sqrt(i))) and (j mod 2 = 0) then begin cd += 1; del := j; end
            else 
        begin
          if j mod 2 = 0 then  begin cd += 1; del := j; end;
          if i div j mod 2 = 0 then begin cd += 1; del := i div j; end;
        end;
        if cd > 3 then break;  
      end;
    if cd = 3 then 
      begin
        write(i,': ');
        for j := 2 to i div 2 do 
          if i mod j = 0 then write(j,' ');
         writeln;
         writeln(i, ' ', del);
         writeln;
      end;
  end;
end.
