{(№ 2927) Напишите программу, которая ищет среди целых чисел, принадлежащих
 числовому отрезку [102714; 102725], числа, имеющие ровно 4 различных делителя. 
 Выведите для каждого найденного числа два наибольших делителя 
 в порядке возрастания.}
{var

  i, d, t, j, max: longint;

begin
  for i := 102714 to 102725 do
  begin
    d := 2;
    max := 0;
    for j := 2 to i div 2 do
      if i mod j = 0 then 
      begin
        d += 1;
        max :=  j;
        if d > 4 then break;
      end;
    if d = 4 then
      writeln(max, ' ', i);
  end;
end.    }
var
  t: real;
  i, pr, d, j: integer;

begin
  for i := 102714 to 102725 do
  begin
    t := i;pr := 0;d := 2;
    for j := 2 to trunc(sqrt(t)) do 
      if i mod j = 0 then 
      begin
        pr := i div j;
        d += 2;
        if d > 4 then break;
      end;
    if d = 4 then writeln(pr, ' ', i);       
  end;
end.