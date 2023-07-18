{	(№ 2880) (А.Н. Носкин) Напишите программу, которая ищет среди целых чисел, 
принадлежащих числовому отрезку [1532040; 1532160], простые числа. Выведите все 
найденные простые числа в порядке убывания, слева от каждого числа выведите его 
номер по порядку.}
var count, i , j, d : integer;
begin
  count := 0;
  for i :=  1532160 downto 1532040 do
    begin
      d := 0;
      for j := 2 to i div 2 do 
        if i mod j = 0 then 
          begin
            d += 1;
            break;
          end;
      if d = 0 then 
        begin
          count += 1;
          writeln (count,' ',i);
        end; 
    end;
end.