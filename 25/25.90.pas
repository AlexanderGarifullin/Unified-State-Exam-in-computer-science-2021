{(№ 2883) Напишите программу, которая ищет среди целых чисел, принадлежащих 
числовому отрезку [20789; 35672], числа, имеющие ровно 5 различных делителей.
 Выведите количество таких чисел и наименьшее их них.}
var i, d, j, count, t  : integer;
begin
  for i := 20789 to 35672 do 
    begin
      d := 2; 
      for j := 2 to i div 2 do 
        if i mod j = 0 then 
          begin
            d += 1;
            if d > 5 then break;
          end;
       if d = 5 then 
        begin
          count += 1;
          t := i;
        end;
    end;
  writeln (count,' ',t);  
end.