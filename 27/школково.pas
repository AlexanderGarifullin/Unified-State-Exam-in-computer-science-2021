{дано число n, затем n натуральных чисел. Найти количество пар чисел таких,что 
сумма делится на 80,произведение кратно 7}
//!неэффективная программа!
{var
  b, x, i, j,ans, n, counter: integer;
  a: array[1..10000] of integer;//1..n

begin
  readln(n);
  for i := 1 to n do 
    readln(a[i]);
  counter := 0;
  for i := 1 to n do 
    for j := i + 1 to n do 
      if ((a[i] + a[j]) mod 80 = 0) and (a[i] * a[j] mod 7 = 0) then 
        counter += 1;
  writeln(counter);  
end.  }

  // !Эффективная программа! нужен массив остатков. 
      //Статистический метод
{var ostne7:array[0..79] of integer;
    ost7:array[0..79] of integer;
     n,x,ans,i,ost:integer;
begin
readln(n);
for i:=1 to n do 
  begin
  readln(x);
  ost := x mod 80
  if (x mod 7 = 0)then 
    ost7[ost] +=1;   
  else ostne7[ost] +=1;
   end;
   for j:=0 to 79 do // с каким числом надо сложить j, чтобы результат делился на
    //80? очевидно,с числом 80-j
    ans := ost7[j]*ostne7[(80-j) mod 80];
    for j:= 1 to 39 do 
      ans += ost7[j] * ost[(80-j) mod 80];
    ans += ost7[0] * (ost7[0]-1) div 2;
    ans += ost7[40] * (ost7[40]-1) div 2;
end.}


//Динамический метод
{var
  b, x, i, j, ost, dop, ans, n: integer;
  a_ne7: array[0..79] of integer;
  a_7: array[0..79] of integer;

begin
  readln(n);
  for i := 1 to n do 
  begin
    readln(x);
    ost := x mod 80;
    dop := (80 - ost) mod 80; //дополняющий остаток
    //вычисляем ответ
    if (x mod 7 = 0) then 
    begin
      ans += a_7[dop];
      ans += a_ne7[dop];
    end
    else 
      ans += a_7[dop];
      //вспомогательная работа, выкинем х на свалку и изменим a_7 и a_ne7
    if x mod 7 = 0 then a_7[ost] += 1
    else a_ne7[ost] += 1;
end;
writeln(ans);
end.    }

{дано число n, затем n натуральных чисел. Найти количество пар чисел таких,что 
сумма делится на 80,произведение кратно 7, числа на расстояние хотя бы 10}
{var
  b, x, i, j, ost,t, dop, ans, n: integer;
  a_ne7: array[0..79] of integer;
  a_7: array[0..79] of integer;
  line:array[1..9] of integer;
begin
  readln(n);
  for i:=1 to 9 do readln (line[i]); //считаем элементы очереди
  for i := 10 to n do 
  begin
    readln(x);
    ost := x mod 80;
    dop := (80 - ost) mod 80; //дополняющий остаток
    //вычисляем ответ
    if (x mod 7 = 0) then 
    begin
      ans += a_7[dop];
      ans += a_ne7[dop];
    end
    else 
      ans += a_7[dop];
      //вспомогательная работа. выкинем х на свалку и изменим a_7 и a_ne7
      //засуним икс в очередь,а самы старый выбросим из очереди (сдвиг очереди)
   t:=line[1] mod 80;
   //скинем line[1] на свалку и увеличем соответственно a_7 и a_ne7
   if line[1] mod 7 = 0 then 
    a_7[t] :=a_7[t]+1
   else
    a_ne7[t] := a_ne7[t] + 1;

    //сдвинем очередь
    for i:=0 to 8 do
      line[i]:=line[i+1];
      line[9]:=x;
end;
writeln(ans);
end.    
{дано число n, затем n натуральных чисел. Найти количество пар чисел таких,что 
сумма делится на 14,произведение кратно 7, числа на расстояние хотя бы 100}
{
var
  b, x, i, j, ost, t, dop, ans, n: integer;
  a_ne7: array[0..13] of integer;
  a_7: array[0..13] of integer;
  line: array[1..99] of integer;

begin
  readln(n);
  for i := 1 to 99 do readln(line[i]); //считаем элементы очереди
  for i := 100 to n do 
  begin
    readln(x);
    ost := x mod 14;
    dop := (14 - ost) mod 14; //дополняющий остаток
    //вычисляем ответ
    if (x mod 7 = 0) then 
    begin
      ans += a_7[dop];
      ans += a_ne7[dop];
    end
    else 
      ans += a_7[dop];
      //вспомогательная работа. выкинем х на свалку и изменим a_7 и a_ne7
      //засуним икс в очередь,а самы старый выбросим из очереди (сдвиг очереди)
    t := line[i mod 99] mod 14;
    //скинем line[1] на свалку и увеличем соответственно a_7 и a_ne7
    if line[1] mod 7 = 0 then 
      a_7[t] := a_7[t] + 1
    else
      a_ne7[t] := a_ne7[t] + 1;

    //сдвинем очередь
    line[i mod 99] := x;
  end;
  writeln(ans);
end.}

//царский сдвиг
// найти максимальное количество четное прозивдение на расстояние хотя бы 7
var
  line: array[0..5] of integer;
  n, ans, maxim, max_even: integer;

begin
  readln(n);
  ans := -10000000;
  maxim := -100000000;
  max_even := -10000000;
  for i := 0 to 5 do readln(a[i]);
  for i := 6 to n do 
  begin
    readln(x);
    if (x mod 2 = 0 ) then 
      if (x * maxim > ans) then ans := x * maxim
      else if (x * max_even > ans) then ans := x * max_even;
    
    //svalka
    if (line[i mod 6] mod 2 = 0 ) then 
      if (line[i mod 6] > maxim) then 
        maxim := line[i mod 6];
    if (line[i mod 6] > maxim) then 
      maxim := line[i mod 6];
    
    //sdvig tsar
    
    line[i mod 6] := x;    
  end;
  writeln(ans);
end.