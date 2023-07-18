{ Напишите программу, которая ищет среди целых чисел, принадлежащих числовому 
отрезку [157898; 157990], числа, имеющие ровно 6 различных делителей.
 Выведите для каждого найденного числа два его наибольших делителя, 
 не равных самому числу, в порядке убывания.}
var
  m, p, i, k, s, j: longint;

begin
  for i := 157898 to 157990 do 
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
      writeln(m, ' ', p);
    end;
  end;
end.