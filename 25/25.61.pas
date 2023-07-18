{(№ 2911) Напишите программу, которая ищет среди целых чисел, принадлежащих 
числовому отрезку [143146; 143215], числа, имеющие ровно 6 различных делителей. 
Выведите для каждого найденного числа два его наибольших делителя, не равных 
самому числу, в порядке возрастания.}
var t:real;
i,j,d,p,pp:integer;
begin
  for i:= 143146 to 143215 do
    begin
      d := 2; t := i;
      for j := 2 to trunc(sqrt(t)) do 
        if i mod j = 0 then
          begin
            if d = 2 then p := i div j 
              else if d = 4 then pp := i div j;
            d += 2;
            if d > 6 then break;
          end;
       if d = 6 then writeln (pp,' ',p);   
    end;
end.