{	(№ 2924) Напишите программу, которая ищет среди целых чисел, принадлежащих
 числовому отрезку [113012; 113061], числа, имеющие ровно 4 различных делителя.
 Выведите для каждого найденного числа два наибольших делителя в порядке возрастания.}
var
  t: real;
  i, d, j, pr: integer;

begin
  for i := 113012 to 113061 do
  begin
    d := 2;t := i;
    for j := 2 to trunc(sqrt(t)) do
      if i mod j = 0 then 
      begin
        pr := i div j;
        d += 2;
        if d > 4 then break;
      end;
    if d = 4 then writeln(pr, ' ', i);   
  end;
end.