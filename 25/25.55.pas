{(№ 2923) Напишите программу, которая ищет среди целых чисел, принадлежащих
 числовому отрезку [222987; 223021], числа, имеющие ровно 4 различных делителя.
 Выведите для каждого найденного числа два наибольших делителя в порядке возрастания.}
var
  t: real;
  i, d, j, pr: integer;

begin
  for i := 222987 to 223021 do
  begin
    d := 2;t := i;
    for j := 2 to trunc(sqrt(t)) do 
      if i mod j = 0 then 
      begin
        d += 2;
        pr := i div j;
        if d > 4 then break;
      end;
    if d = 4 then writeln(pr, ' ', i);    
  end;
end.