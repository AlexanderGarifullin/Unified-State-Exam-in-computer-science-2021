{(№ 2907) (Б.С. Михлин) Напишите программу, которая ищет среди целых чисел,
 принадлежащих числовому отрезку [394480; 394540], числа, имеющие максимальное 
 количество различных делителей. Выведите информацию о таких числах, расположив
 их в порядке возрастания. Для каждого числа выведите
 два его наибольших делителя в порядке убывания.}
var
  i, s, j, k, p, m, max: longint;

begin
  for i := 394480 to 394540 do
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
  for i := 394480 to 394540 do 
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
      writeln(i, ' ', m); 
    end;
 end;
end.