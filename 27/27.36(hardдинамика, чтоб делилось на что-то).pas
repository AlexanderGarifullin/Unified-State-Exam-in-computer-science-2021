{Дано число n, затем nпар чисел. Надо выбрать по одному числу в каждой паре так,
чтобы сумма всех выбранных чисел делилась на 5 и была макс.
пример
  4
1 2
2 3
3 4
7 12  }
var
  s: array[0..4] of integer;
  s2: array[0..4] of integer;
  mozhno: array[0..4] of boolean;
  mozhno2: array[0..4] of boolean;
  n, j, i, a, b, ost: integer;

begin
  readln(n);
  for j := 0 to 4 do 
  begin
    s[j] := 0;
    mozhno[j] := false;
  end;
  mozhno[0] := true;
  for i := 1 to n do 
  begin
    readln(a, b);
    for j := 0 to 4 do 
    begin
      s2[j] := 0;
      mozhno2[j] := false;
    end; 
    for j := 0 to 4 do 
      if (mozhno[j] = true) then 
      begin
        ost := (s[j] + a) mod 5;
        mozhno2[ost] := true;
        if (s[j] + a > s2[ost]) then
          s2[ost] := s[j] + a;
        
        ost := (s[j] + b) mod 5;
        mozhno2[ost] := true;
        if (s[j] + b > s2[ost]) then
          s2[ost] := s[j] + b;
      end; 
    for j := 0 to 4 do 
    begin
      s[j] := s2[j];
      mozhno[j] := mozhno2[j];
    end;
  end;
  writeln(s[0]);
end.