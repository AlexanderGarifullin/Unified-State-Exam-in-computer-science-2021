program m;


var
  a: array[1..100] of integer;
  f: text;
  i, s, n, b, min: integer;

begin
  assign(f, '26.txt');
  reset(f);
  readln(f, n);
  s := 0;min := 0;
  for i := 1 to 100 do a[i] := 0;
  for i := 1 to n do 
  begin
    readln(f, b);
    a[b] += 1;
  end;
  for i := 1 to 49 do
  begin
    if a[i] < a[100 - i] then min := a[i] // ищем общее количество, чтобы  получить минимальное количество лишних чисел
    else min := a[100 - i];               // например у нас есть 2 по 1 и 3 по 99
    s := s + min;                         // их число пар будет 2, минимальным значением массива 
  end;
  s += a[50] div 2;
  writeln(s);

end.