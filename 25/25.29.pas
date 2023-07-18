{(№ 2925) Напишите программу, которая ищет среди целых чисел, принадлежащих 
числовому отрезку [150750; 150764], числа, имеющие ровно 4 различных делителя.
 Выведите для каждого найденного числа два наибольших
 делителя в порядке возрастания.}
var
  i, j, k, s, pr: longint;

begin
  for i := 150750 to 150764 do 
  begin
    k := 0;
    for j := 1 to i div 2 do
      if i mod j = 0 then 
      begin
        k += 1;
        if k > 3 then break;
      end;
    if k = 3 then 
    begin
      for s := 1 to i div 2 do 
        if i mod s = 0 then pr := s;
      writeln(pr, ' ', i);
    end;
  end;
end.