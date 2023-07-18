{Имеется набор данных, состоящий из положительных целых чисел, не превышающих 10000.
Необходимо найти количество троек, в которых сумма первых двух элементов равна 
третьему элементу. Порядок элементов тройки должен соответствовать порядку в последовательности.}
var i,  c,  n,  x,  j,  k:integer;
    a:array[1..10000] of integer;
begin
 assign(input,'27-B.txt');
  readln(n);
  readln(x);
  a[x] += 1;
  readln(x);
  a[x] += 1;
  for i := 3 to n do
    begin
      readln(x);
      for j := 1 to x div 2   do 
        begin
          if (x-j = x div 2) then c += a[x div 2] * (a[x div 2] - 1) div 2
          else c +=  a[x-j]*a[j];
        end;
      a[x] += 1;    
    end;
  writeln(c);
end.