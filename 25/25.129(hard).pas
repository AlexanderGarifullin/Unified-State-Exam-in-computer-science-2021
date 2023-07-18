{(№ 2612) Рассматриваются целые числа, принадлежащих числовому отрезку 
[536792; 604298], которые представляют собой произведение трёх различных простых
 делителей, оканчивающихся на одну и ту же цифру. В ответе запишите количество
 таких чисел и такое из них, для которого разность наибольшего и наименьшего 
 простых делителей максимальна.}

var
  i, d, t, j, dif, countdel, count, min, max, ans: integer;
  p: real;
  flag, br: boolean;
  a: array[1..3] of integer;

begin
  count := 0;dif := 0;
  for i := 536792 to 604298 do 
  begin
    for j := 1 to 3 do a[j] := 0;
    d := 2;p := 1;t := i;
    countdel := 1;br := true;
    while (t <> 1) and (countdel < 4) and (d < i div 2)  do
    begin
      if t mod d = 0 then 
      begin
        flag := true;
        for j := 2 to d div 2 do 
          if d mod j = 0 then 
          begin
            flag := false;
            break;
          end;
        if flag then 
        begin
          a[countdel] := d;
          p *= d;
          t := t div d;
          countdel += 1;
        end;
      end;
      d += 1;
    end;
    for j := 1 to 2 do 
      if (a[j] mod 10) <> (a[j + 1] mod 10) then 
        br := false;
    if br then
      if round(p) = i then 
      begin
        min := a[1];max := a[2];
        for j := 1 to 3 do 
        begin
          if a[j] < min then min := a[j];
          if a[j] > max then max := a[j];
        end;
        if (max - min) > dif then 
        begin
          ans := i;
          dif := a[3] - a[1];
        end;
        count += 1;
      end;
    writeln(i);   
  end;
  writeln;
  writeln(count, ' ', ans);
end.