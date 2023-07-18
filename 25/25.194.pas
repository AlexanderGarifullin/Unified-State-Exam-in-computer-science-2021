{(№ 3778) Найдите все натуральные числа, принадлежащие отрезку 
[105 000 000; 115 000 000], у которых ровно пять различных нечётных делителей 
(количество чётных делителей может быть любым). В ответе перечислите найденные
числа, справа от каждого числа запишите его наибольший нечётный делитель.}
var
  i, cd, del, j: integer;

begin
  for i := 105000000 to 115000000     do  
  begin
    cd := 0;del := 0;
    for j := 1 to round(sqrt(i)) do 
      if i mod j = 0 then
      begin
        if (j = round(sqrt(i))) and (j mod 2 = 1) then
        begin
          cd += 1;
          if j > del then del := j;
        end
            else
        begin
          if (j mod 2 = 1) then   
          begin
            cd += 1;
            if j > del then del := j;
          end;
          if (i div j mod 2 = 1) then   
          begin
            cd += 1;
            if i div j > del then del := i div j;
          end;  
        end;
        if cd > 5 then break;    
      end;
    if cd = 5 then writeln(i, ' ', del);     
  end;
end.