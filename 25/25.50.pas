{	(№ 2928) Напишите программу, которая ищет среди целых чисел, принадлежащих
 числовому отрезку [126849; 126871], числа, имеющие ровно 4 различных делителя. 
 Выведите для каждого найденного числа два наибольших делителя в
 порядке возрастания.}
{var
  d, j, i, pr: longint;
  t:real;
begin
  for i := 126849 to 126871 do 
  begin
    d := 2;pr := 0; t:= i;
    for j := 2 to trunc(sqrt(t)) do 
      if i mod j = 0 then
      begin
        pr := i div j;
        d += 2;
        if d > 4 then break;
      end;
    if d = 4 then writeln(pr, ' ', i);   
  end;
end.}
var
  d, j, i, pr: longint;

begin
  for i := 126849 to 126871 do 
  begin
    d := 2;pr := 0; 
    for j := 2 to i div 2 do 
      if i mod j = 0 then
      begin
        pr := j;
        d += 1;
        if d > 4 then break;
      end;
    if d = 4 then writeln(pr, ' ', i);   
  end;
end.