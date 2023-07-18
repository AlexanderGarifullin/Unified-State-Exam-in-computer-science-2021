{(№ 2924) Напишите программу, которая ищет среди целых чисел, принадлежащих 
числовому отрезку [113012; 113061], числа, имеющие ровно 4 различных делителя.
 Выведите для каждого найденного числа два наибольших делителя 
 в порядке возрастания.}
var i,k,j,s,pr:longint;
begin
for i:= 113012 to 113061 do
  begin
  k:=0;
  for j:=1 to i div 2 do
    if i mod j = 0 then 
      begin
        k += 1;
        if k > 3 then break;
      end;
  if k = 3 then 
    begin
      for s:= 1 to i div 2 do 
        if i mod s = 0 then pr := s;
      writeln(pr,' ',i);
    end;
  end;
end. 