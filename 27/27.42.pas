﻿{(№ 3776) В файле записана последовательность натуральных чисел. Гарантируется,
что все числа различны. Из этой последовательности нужно выбрать четыре числа, 
чтобы их сумма делилась на 9 и была наименьшей. Какую наименьшую сумму можно 
при этом получить? Входные данные. Даны два входных файла (файл A и файл B),
каждый из которых содержит в первой строке количество чисел N (1 ≤ N ≤ 100000).
Каждая из следующих N строк содержит одно натуральное число, не превышающее 108.
Пример входного файла:
6
5
7
12
23
2
8
Для указанных данных можно выбрать четвёрки 5, 12, 2, 8 (сумма 27) и 12, 23, 2, 8
(сумма 45). Наименьшая из сумм – 27. В ответе укажите два числа: сначала искомое
значение для файла А, затем для файла B.}
var n,i,j,m,x,ost,ost1:integer;
    m1 : array[0..8] of integer;
    m2 : array[0..8] of integer;
    m3 : array[0..8] of integer;
begin
  assign(input,'27-57b.txt');
  readln(n);
  m := 1000000;
  for i := 0 to 8 do
    begin
      m1[i] := 1000000;
      m2[i] := 1000000;
      m3[i] := 1000000;
    end;
  for i := 1 to n do
    begin
      readln(x);
      ost1 := (9- x mod 9) mod 9;
      if (m3[ost1] <> 1000000) and (m3[ost1] + x < m) then
        m := m3[ost1] + x;
      for j := 0 to 8 do
        if (m2[j] <> 1000000) then
          begin
            ost := (x + m2[j]) mod 9;
            m3[ost] := min(m3[ost],x + m2[j])
          end;
      for j := 0 to 8 do
        if (m1[j] <> 1000000) then
          begin
            ost := (x + m1[j]) mod 9;
            m2[ost] := min(m2[ost],x + m1[j])
          end;      
      m1[x mod 9] := min(m1[x mod 9],x);      
    end;
  writeln(m);    
end.