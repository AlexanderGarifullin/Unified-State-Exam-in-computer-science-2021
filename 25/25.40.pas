{(№ 2908) (Б.С. Михлин) Напишите программу, которая ищет среди целых чисел,
 принадлежащих числовому отрезку [586132; 586430], числа, имеющие максимальное
 количество различных делителей. Найдите минимальное и максимальное 
 из таких чисел. Для каждого из них в отдельной строчке выведите количество
 делителей и наибольший делитель, не равный самому числу.}
var
  i, s, j, k, p, m, max: longint;

begin
  for i := 586132 to 586430 do
  begin
    k := 1;
    for j := 1 to i div 2  do
      if i mod j = 0 then
      begin
        k += 1;
        if k > max then 
          max := k;
      end;        
  end; 
  for i := 586132 to 586430 do 
  begin
    k := 1;
    for j := 1 to i div 2 do 
      if i mod j = 0 then
        k += 1;
    if k = max then
    begin
      for s := 1 to i div 2 do 
        if i mod s = 0 then 
          m := s;
      writeln(k, ' ', m); 
    end;
    
  end;
end.