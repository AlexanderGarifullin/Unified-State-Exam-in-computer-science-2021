{(№ 2907) (Б.С. Михлин) Напишите программу, которая ищет среди целых чисел, 
принадлежащих числовому отрезку [394480; 394540], числа, имеющие максимальное 
количество различных делителей. Выведите информацию о таких числах, расположив 
их в порядке возрастания. Для каждого числа выведите два его наибольших делителя 
в порядке убывания.}
var
  i, j, s, count, d, m: integer;

begin
  
  for i := 394480 to 394540 do
  begin
    count := 2; 
    for j := 2 to i div 2 do
      if i mod j = 0 then 
      begin
        count += 1;
        if count > m then m := count;
      end;
  end;
  
  for i := 394480 to 394540 do
  begin
    count := 2; 
    for j := 2 to i div 2 do
      if i mod j = 0 then 
        count += 1;
    if count = m then   
    begin
      for s := 2 to i div 2 do
        if i mod s = 0 then 
          if s > d then d := s;
      writeln(i, ' ', d);
    end;
  end; 
  
end.
