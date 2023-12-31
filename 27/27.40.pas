﻿{(№ 3775) В файле записана последовательность натуральных чисел. Гарантируется, 
что все числа различны. Из этой последовательности нужно выбрать четыре числа, 
чтобы их сумма делилась на 6 и была наибольшей. Какую наибольшую сумму можно при
этом получить? Входные данные. Даны два входных файла (файл A и файл B), каждый
из которых содержит в первой строке количество чисел N (1 ≤ N ≤ 100000). Каждая
из следующих N строк содержит одно натуральное число, не превышающее 108.
Пример входного файла:
6
6
4
13
11
10
8
Для указанных данных можно выбрать четвёрки 4, 13, 11, 8 (сумма 36) и 13, 11, 10, 
8 (сумма 42). Наибольшая из сумм – 42.В ответе укажите два числа: сначала искомое 
значение для файла А, затем для файла B.}
var
  x, n, m, ost, ost1: longint;
  m1: array[0..5] of longint;
  m2: array[0..5] of longint;
  m3: array[0..5] of longint;
  j, i: integer;

begin
  m := 0;
  for j := 0 to 5 do
  begin
    m1[j] := 0;
    m2[j] := 0;
    m3[j] := 0;
  end;
  assign(input, '27-56b.txt');
  readln(n);
  for i := 1 to n do
  begin
    readln(x);
    ost1 := (6 - (x mod 6)) mod 6;
    if (m3[ost1] <> 0) and (x + m3[ost1] > m) then 
      m := x + m3[ost1];
    
    for j := 0 to 5 do
      if (m2[j] <> 0) then
      begin
        ost := (m2[j] + x) mod 6;
        m3[ost] := max(m3[ost], m2[j] + x);
      end;
    
    for j := 0 to 5 do
      if (m1[j] <> 0) then
      begin
        ost := (m1[j] + x) mod 6;
        m2[ost] := max(m2[ost], m1[j] + x);
      end;  
    m1[x mod 6] := max(m1[x mod 6], x);      
  end;
  writeln(m);    
end.