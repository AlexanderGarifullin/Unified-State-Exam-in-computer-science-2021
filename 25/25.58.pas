{(№ 2920) Напишите программу, которая ищет среди целых чисел, принадлежащих 
числовому отрезку [100812; 100923], числа, имеющие ровно 6 различных делителей.
Выведите для каждого найденного числа два наибольших делителя в порядке возрастания.}
var t:real;
  d, i, j, p : integer;
begin
  for i := 100812 to 100923 do
    begin
      d := 2; t := i;
      for j := 2 to trunc(sqrt(t)) do
        if i mod j = 0 then 
          begin
            if d = 2 then p := i div j;
            d += 2;
            if d > 6 then break;
          end;
      if d = 6 then writeln (p,' ',i);    
    end;
end.