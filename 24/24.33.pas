{ Текстовый файл состоит не более чем из 106 символов X, Y и Z. Определите
максимальную длину цепочки вида XYZXYZXYZ... (составленной из фрагментов XYZ, 
последний фрагмент может быть неполным).}
var
  s: string;
  i, count, m: integer;

begin
  assign(input, '24_demo.txt');
  readln(s);count := 0;m := 0;
  for i := 1 to length(s) do 
  begin
    if ((s[i] = 'X') and (count mod 3 = 0)) or 
      ((s[i] = 'Y') and (count mod 3 = 1)) or
      ((s[i] = 'Z') and (count mod 3 = 2)) then
    begin
      count += 1;
      if count > m then m := count;
    end
    else if (s[i] = 'X') then count := 1
    else count := 0;
  end;
  writeln(m);  
end.