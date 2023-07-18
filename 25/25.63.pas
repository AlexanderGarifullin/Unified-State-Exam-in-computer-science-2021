{(№ 2909) Напишите программу, которая ищет среди целых чисел, принадлежащих 
числовому отрезку [100806; 100950], числа, имеющие ровно 6 различных делителей. 
Выведите для каждого найденного числа два наибольших делителя, не равных самому числу, в порядке возрастания.}
var t:real;
  i, j, d, p, pp:integer;
begin
  for i := 100806 to 100950 do 
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