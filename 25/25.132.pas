{(№ 2609) Среди целых чисел, принадлежащих числовому отрезку [264871; 322989], 
найдите числа, которые представляют собой произведение двух различных простых
делителей, заканчивающихся на одну и ту же цифру. Запишите в ответе количество 
таких чисел и их среднее арифметическое. Для среднего арифметического запишите 
только целую часть числа.}    //2188 293613 вместо 2182 293612
function f(n: integer): boolean;
var
  s: integer;
begin
  f := true;
  for s := 2 to n div 2 do 
    if n mod s = 0 then
    begin
      f := false;
      break;
    end;
end;

var
  a: array[1..2] of integer;
  i, j, count, countdel, d, t: integer;
  p: real;
  sum: longint;
  br: boolean;

begin
  count := 0;sum := 0;
  for i := 264871 to 322989 do
  begin
    t := i;countdel := 1;
    p := 1;d := 2;br := true;
    for j := 1 to 2 do a[j] := 0;
    while br and (t <> 1) and (d <= i div 2) and (round(p) < i) and (countdel < 2) do
    begin
      if t mod d = 0 then
        if f(d) then
        begin
          a[countdel] := d;
          a[countdel + 1] := t div d;
          countdel += 1;
          p := p * a[1] * a[2];
          br := false;
        end;
      d += 1;
    end;
    br := false;
    if (a[1] mod 10 = a[2] mod 10) and (a[1] <> a[2]) then br := true;
    if (countdel = 2) and br and (round(p) = i) and (f(a[1])) and (f(a[2])) then
    begin
      sum += i;
      count += 1;
      writeln('dasfasfasfasdada');
    end;
    writeln(i);        
  end;
  writeln(count, ' ', sum div count); 
end.  