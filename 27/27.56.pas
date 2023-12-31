﻿{(№ 2671) Имеется набор данных, состоящий из троек положительных целых чисел. 
Необходимо выбрать из каждой тройки ровно одно число так, чтобы сумма всех 
выбранных чисел делилась на 8 и при этом была максимально возможной. Гарантируется, 
что искомую сумму получить можно. Программа должна напечатать одно число – максимально 
возможную сумму, соответствующую условиям задачи.
Входные данные. Даны два входных файла (файл A и файл B), каждый из которых содержит 
в первой строке количество троек N (1 ≤ N ≤ 100000). Каждая из следующих N строк 
содержит три натуральных числа, не превышающих 10 000.
Пример входного файла:
6
8 3 4
4 8 12
9 5 6
2 8 3
12 3 5
1 4 12
Для указанных входных данных значением искомой суммы должно быть число 56.
В ответе укажите два числа: сначала искомое значение для файла А, затем для файла B.}
var i,  j,  a,  b,  c,  mx, mn, md, t1, t2, s,  n:integer;
    d:array[0..7] of integer;
    d2:array[0..7] of integer;
begin
  assign(input,'27-11b.txt');
  readln(n);
  for i := 0 to 7 do d[i] := 100000;
  for i := 1 to n do
    begin
      readln(a,b,c);
      s += max(a,max(b,c));
      mx := max(a,max(b,c));
      mn := min(a,min(b,c));
      md := a+b+c-mx-mn;
      t1 := mx-mn;
      t2 := mx-md;
      for j := 0 to 7 do
        d2[j] := d[j];
      for j := 0 to 7 do
        begin
          if  t1+d2[j] < d2[(t1+d2[j]) mod 8] then
            d[(t1+d2[j]) mod 8] := t1+d2[j];  
          if  t2+d2[j] < d2[(t2+d2[j]) mod 8] then
            d[(t2+d2[j]) mod 8] := t2+d2[j];   
        end;
      if t1<d[t1 mod 8] then  d[t1 mod 8] := t1;
      if t2<d[t2 mod 8] then  d[t2 mod 8] := t2;      
    end;
  if s mod 8 = 0 then writeln(s)
  else 
    for j := 1 to 7 do
      if (s-d[j]) mod 8 = 0 then writeln(s-d[j])   
end.