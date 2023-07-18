{(№ 2920) Напишите программу, которая ищет среди целых чисел, принадлежащих
 числовому отрезку [100812; 100923], числа, имеющие ровно 6 различных делителей.
 Выведите для каждого найденного числа два наибольших
 делителя в порядке возрастания.}
var
  i, s, j, k, pr: longint;

begin
  for i := 100812 to 100923 do 
  begin
    k := 0;
    for s := 1 to i div 2 do
      if i mod s = 0 then
      begin
        k += 1;
        if k > 5 then break;
      end;
    if k = 5 then 
    begin
      for j := 1 to i div 2 do 
        if i mod j = 0 then pr := j;
      writeln(pr, ' ', i);
    end;
  end;
end.