{(№ 2921) Напишите программу, которая ищет среди целых чисел, принадлежащих
числовому отрезку [193136; 193223], числа, имеющие ровно 6 различных делителей.
Выведите для каждого найденного числа два наибольших делителя в порядке возрастания.}
var
  t: real;
  i, j, d, p: integer;

begin
  for i := 193136 to 193223 do 
  begin
    d := 2;t := i;
    for j := 2 to trunc(sqrt(t)) do 
      if i mod j = 0 then 
      begin
        if d = 2 then p := i div j;
        d += 2;
        if d > 6 then break;
      end;
    if d = 6 then writeln(p, ' ', i);    
  end;
end.