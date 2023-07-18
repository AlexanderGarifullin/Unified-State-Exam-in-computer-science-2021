﻿{(№ 2677) (А. Жуков) Имеется набор данных, состоящий из положительных целых чисел. 
Необходимо определить количество пар элементов (ai, aj) этого набора, в которых 
1 ≤ i+5 ≤ j ≤ N, сумма элементов нечётна, а произведение делится на 13.
Входные данные. Даны два входных файла (файл A и файл B), каждый из которых содержит 
в первой строке количество чисел N (1 ≤ N ≤ 100000). Каждая из следующих N строк 
содержит одно натуральное число, не превышающее 10 000.
Пример входного файла:
7
4 
14
27
39
7
2
13
Для указанных входных данных количество подходящих пар должно быть равно 2. В 
приведённом наборе имеются две пары (4, 13) и (14, 13), сумма элементов которых нечётна, 
произведение кратно 13 и индексы элементов последовательности отличаются не менее, чем на 5.
В ответе укажите два числа: сначала количество подходящих пар для файла А, затем для файла B.}
var
  i, j, n, b, m130, m131, even, odd: integer;
  a: array[1..6] of integer;

begin
  assign(input, '27-17b.txt');
  readln(n);
  for i := 1 to 5 do readln(a[i]);
  for i := 6 to n do
  begin
    if (a[1] mod 13 = 0) and (a[1] mod 2 = 0) then m130 += 1
    else if (a[1] mod 13 = 0) and (a[1] mod 2 = 1) then m131 += 1
    else if (a[1] mod 13 <> 0) and (a[1] mod 2 = 0) then even += 1 
    else if (a[1] mod 13 <> 0) and (a[1] mod 2 = 1) then odd += 1;
    readln(a[6]);
    if (a[6] mod 13 = 0) and (a[6] mod 2 = 0) then
      b += odd + m131
    else if (a[6] mod 13 = 0) and (a[6] mod 2 = 1) then
      b += even + m130
    else if (a[6] mod 13 <> 0) and (a[6] mod 2 = 0) then
      b += m131
    else if (a[6] mod 13 <> 0) and (a[6] mod 2 = 1) then
      b += m130;  
    for j := 1 to 5 do 
      a[j] := a[j + 1];
  end;
  writeln(b);    
end.