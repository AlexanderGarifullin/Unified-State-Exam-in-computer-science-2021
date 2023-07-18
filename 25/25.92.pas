{(№ 2881) (А.Н. Носкин) Напишите программу, которая ищет среди целых чисел, 
принадлежащих числовому отрезку [2532000; 2532160], простые числа. Выведите все
найденные простые числа в порядке убывания, слева от каждого числа выведите его 
номер по порядку.}
var count, i, d, j : integer;
begin
  count := 0;
  for i := 2532160 downto 2532000 do
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