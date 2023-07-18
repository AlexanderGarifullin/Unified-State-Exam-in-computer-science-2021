{(№ 2928) Напишите программу, которая ищет среди целых чисел, 
принадлежащих числовому отрезку [126849; 126871], числа, 
имеющие ровно 4 различных делителя. Выведите для каждого найденного числа два 
наибольших делителя в порядке возрастания. }
var i,k,max,pr,j,s:longint;
begin
for i:=126849 to 126871 do
  begin
  k:=0; max:=0; pr:=0;
  for s:=1 to i do
    if i mod s = 0 then
      begin
      k +=1 ;
      if k > 4 then break;
      end;
  if k = 4 then
    begin
    for j:=1 to i do 
      if i mod j = 0 then 
        begin
        pr:=max;
        max:=j;
        end;
    writeln (pr,' ',max);
    end;
  end;
end.