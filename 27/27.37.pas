{(Д.Ф. Муфаззалов) Имеется набор данных, состоящий из троек положительных целых 
чисел. Необходимо выбрать из каждой тройки два числа так, чтобы сумма всех 
выбранных чисел делилась на 4 и при этом была максимально возможной. 
Гарантируется, что искомую сумму получить можно. Программа должна напечатать 
одно число – максимально возможную сумму, соответствующую условиям задачи.
Входные данные. Даны два входных файла (файл A и файл B), каждый из которых 
содержит в первой строке количество троек N (1 ≤ N ≤ 100000). Каждая из 
следующих N строк содержит три натуральных числа, не превышающих 10 000.
Пример входного файла:
6
8 3 4
4 8 12
9 5 6
2 8 3
12 3 5
1 4 12
Для указанных входных данных значением искомой суммы должно быть число 88.
В ответе укажите два числа: сначала искомое значение для файла А, затем для файла B.}
var
  dif: array[1..3] of integer;
  dif2: array[1..3] of integer;
  dif3: array[1..3] of integer;
  i, mid, s, a, b, c, n, mx, mn, mn2, mx2, mid2, o,
  mn3, mx3, mid3, an1, an2, an3, an: integer;
  f: text;

begin
  for i := 1 to 3 do dif[i] := 1000000;
  s := 0; 
  assign(f, '27-33b.txt');
  reset(f);
  readln(f, n);
  for i := 1 to n do 
  begin
    readln(f, a, b, c);
    if mx > mx2 then mx2 := mx;
    if mn > mn2 then mn2 := mn;
    if mid > mid2 then mid2 := mid;
    
    if mx < mx3 then mx3 := mx;
    if mn < mn3 then mn3 := mn;
    if mid < mid3 then mid3 := mid;
    
    mx := max(a, max(b, c));
    mn := min(a, min(b, c));
    mid := a + b + c - mx - mn;
    s += mx + mid; 
    
    if ((mx - mid) mod 4 <> 0) and ((mx - mid) < dif[(mx - mid) mod 4]) then 
    begin
      dif3[(mx - mid) mod 4] := dif2[(mx - mid) mod 4];
      dif2[(mx - mid) mod 4] := dif[(mx - mid) mod 4];
      dif[(mx - mid) mod 4] := mx - mid;        
    end;
    if ((mx - mn) mod 4 <> 0) and ((mx - mn) < dif[(mx - mn) mod 4]) then 
    begin
      dif3[(mx - mn) mod 4] := dif2[(mx - mn) mod 4];
      dif2[(mx - mn) mod 4] := dif[(mx - mn) mod 4];
      dif[(mx - mn) mod 4] := mx - mn;     
    end;
    if ((mid - mn) mod 4 <> 0) and ((mid - mn) < dif[(mid - mn) mod 4]) then 
    begin
      dif3[(mid - mn) mod 4] := dif2[(mid - mn) mod 4];
      dif2[(mid - mn) mod 4] := dif[(mid - mn) mod 4];
      dif[(mid - mn) mod 4] := mid - mn;    
    end;
  end;
  if s mod 4 = 0 then writeln(s)
  else
  begin
    o := s mod 4;
    if o = 3 then
    begin
      an1 := dif[3];
      an2 := dif[1] + dif2[1] + dif3[1];
      an3 := dif[1] + dif[2];
      an := min(an1, min(an2, an3));
      s -= an;
    end
    else 
    if o = 2 then
    begin
      an1 := dif[2];
      an2 := dif[1] + dif2[1];
      an := min(an1, an2);
      s -= an;
    end
     else 
    if o = 1 then
    begin
      an := dif[1];
      s -= an;
    end
  end;
  writeln(s);
  close(f);  
end.