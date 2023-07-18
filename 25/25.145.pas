{(№ 2596) (К. Амеличев) Среди целых чисел, принадлежащих числовому отрезку 
[1686; 13276], найдите числа, все цифры которых нечетные. Ответом будет сумма
цифр найденных чисел.}

function f(n: integer): boolean;
var
  t: integer;
  fl: boolean;
begin
  t := n;f := true;fl := true;
  while (t <> 0) and fl do
  begin
    if t mod 10 mod 2 = 0 then
    begin
      fl := false;
      f := false;  
    end;  
    t := t div 10;  
  end;
end;

var
  s, i, j: integer;

begin
  s := 0;
  for i := 1686 to 13276 do
    if f(i) then
    begin
      j := i;
      while j <> 0 do
      begin
        s += j mod 10;
        j := j div 10;
      end;   
    end;
  writeln(s);      
end.