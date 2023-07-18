{(№ 2580) (Б.С. Михлин) Напишите программу, которая ищет среди целых чисел,
принадлежащих числовому отрезку [586132; 586430], числа, имеющие максимальное 
количество различных делителей. Найдите минимальное и максимальное из таких
чисел. В ответе для каждого из них запишите два числа: количество делителей и 
наибольший делитель, не равный самому числу.}
var
  i,  d,  del, md, j: integer;

begin
  for i := 586132 to 586430 do
  begin
    d := 2;
    for j := 2 to i div 2 do 
      if i mod j = 0 then
        d += 1;
    if d > md then md := d;      
  end;
  for i := 586132 to 586430 do 
  begin
    d := 2;
    for j := 2 to i div 2 do 
      if i mod j = 0 then
      begin
        d += 1;
        del := j;
      end;
    if d = md then
    begin
      writeln(d, ' ', del);
      break;
    end;
  end;
  for i := 586430 downto 586132 do 
  begin
    d := 2;
    for j := 2 to i div 2 do 
      if i mod j = 0 then
      begin
        d += 1;
        del := j;
      end;
    if d = md then
    begin
      writeln(d, ' ', del);
      break;
    end;
  end;  
end.