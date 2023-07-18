{(№ 2598) (К. Амеличев) Среди целых чисел, принадлежащих числовому отрезку 
[1395; 22717], найдите числа, все цифры которых расположены в порядке неубывания.
Ответом будет сумма найденных чисел.}
var
  fl: boolean;
  s, i, d, d2, t: integer;

begin
  s := 0;
  for i := 1395 to 22717 do 
  begin
    t := i;d := t mod 10;fl := true;
    while (t <> 0) and fl do
    begin
      t := t div 10;
      d2 := t mod 10;
      if d < d2 then fl := false;
      d := d2;  
    end;
    if fl then s += i;  
  end;
  writeln(s);
end.