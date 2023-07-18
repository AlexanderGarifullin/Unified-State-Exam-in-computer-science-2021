var
  f: text;
  a: array[0..1] of integer;   //  кол-во четн/нечетных чисел после кот были 0 
  an: array[0..1] of integer;  //  кол-во четн/нечетных чисел после кот не было были 0 (anow)
  n, i, x, count: integer;

begin
  assign(f, '27-B.txt');
  reset(f);
  readln(f, n);count := 0;
  for i := 0 to 1 do 
  begin
    a[i] := 0;
    an[i] := 0;
  end;
  for i := 1 to n do
  begin
    readln(f, x);
    if x = 0 then 
    begin
      a[0] += an[0];    //как только мы встретили 0,то прибавляем кол-во до 0
      a[1] += an[1];   
      an[0] := 0;      //  обнуляем кол-во ч/н в данный момент
      an[1] := 0;
    end
      else
    begin
      count += a[x mod 2];       // добавляем к ответу числа смотря на кол-во чисел до 0 
      an[x mod 2] += 1;       //считываем кол-во ч/н до 0/после
    end;
  end;
  writeln(count);  
end.