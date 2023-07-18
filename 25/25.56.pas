{(№ 2922) Напишите программу, которая ищет среди целых чисел, принадлежащих
 числовому отрезку [258274; 258297], числа, имеющие ровно 4 различных делителя.
 Выведите для каждого найденного числа два наибольших делителя в порядке возрастания.}
 var  t:real;
  i, j, d, p:integer;
 begin
  for i := 258274 to 258297 do 
    begin
       d := 2; t := i;
       for j := 2 to trunc(sqrt(t)) do 
        if i mod j = 0 then 
          begin
            d +=2 ;
            p := i div j; 
            if d > 4 then break;
          end;
       if d = 4 then writeln (p,' ',i);   
    end;
 end.