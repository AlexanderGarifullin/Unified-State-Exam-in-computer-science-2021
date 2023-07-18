{(№ 2912) Напишите программу, которая ищет среди целых чисел, принадлежащих
числовому отрезку [157898; 157990], числа, имеющие ровно 6 различных делителей.
Выведите для каждого найденного числа два его наибольших делителя, 
не равных самому числу,в порядке убывания.}
var t:real;
  i, d, j, p, pp: integer;
begin
  for i := 157898 to 157990 do 
    begin
      d := 2; t := i;
      for j := 2 to trunc(sqrt(t)) do 
        if i mod j = 0 then 
          begin
            if d = 2 then p := i div j
            else if d = 4 then pp:= i div j;
            d += 2;
            if d > 6 then break;
          end;
      if d = 6 then writeln (p,' ',pp);    
    end;
end.
 