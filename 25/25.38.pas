{(№ 2910) Напишите программу, которая ищет среди целых чисел, принадлежащих
 числовому отрезку [118811; 118972], числа, имеющие ровно 6 различных делителей. 
 Выведите для каждого найденного числа два наибольших делителя,
 не равных самому числу, в порядке возрастания.}
var
  i, j, s, p, m, k: longint;

begin
  for i := 118811 to 118972 do
  begin
    k := 0;
    for j := 1 to i div 2 do
      if i mod j = 0 then
      begin
        k += 1;
        if k > 5 then break;
      end;
    if k = 5 then
    begin
      for s := 1 to i div 2 do
        if i mod s = 0 then 
        begin
          p := m;
          m := s;
        end;
      writeln(p, ' ', m);
    end;
    
  end;
end.