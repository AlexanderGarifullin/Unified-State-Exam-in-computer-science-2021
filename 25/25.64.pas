{	(№ 2908) (Б.С. Михлин) Напишите программу, которая ищет среди целых чисел,
принадлежащих числовому отрезку [586132; 586430], числа, имеющие максимальное
количество различных делителей. Найдите минимальное и максимальное из 
таких чисел. Для каждого из них в отдельной строчке выведите количество 
делителей и наибольший делитель, не равный самому числу.}
var
  i, s, j, d, m, count: integer;

begin
  for i := 586132 to 586430 do
  begin
    count := 0;
    for j := 1 to i   do 
      if i mod j = 0 then 
      begin
        count += 1;
        if count > m then m := count;
      end;
  end;
  
  for i := 586132 to 586430 do
  begin
    count := 0;
    for s := 1 to i  do 
      if i mod s = 0  then 
        count += 1;
    if count = m then 
    begin
      for j := 2 to i div 2 do 
        if i mod j = 0 then
           if j > d then d := j ;   
      writeln(m, ' ', d,' ',i);
    end;
  end;
end. 