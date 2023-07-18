{(№ 2921) Напишите программу, которая ищет среди целых чисел, 
принадлежащих числовому отрезку [193136; 193223], числа, имеющие ровно 6 
различных делителей. Выведите для каждого найденного числа два наибольших
 делителя в порядке возрастания.}
 var  i,j,s,pr,k:longint;
 begin
 for i:= 193136 to 193223 do
  begin
   k:=0;
   for j:=1 to i div 2 do
      if i mod j = 0 then 
       begin
        k += 1;
        if k > 5 then break;
       end;
    if k  =  5 then 
      begin
        for s:= 1 to i div 2 do 
          if i mod s = 0 then pr := s;
        writeln(pr,' ',i);  
      end;
  end;
 end.