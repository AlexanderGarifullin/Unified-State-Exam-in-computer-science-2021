{Из букв слова КАНКАН составляются 6-буквенные последовательности.Сколько можно 
составить различных последовательностей, если известно, что в каждой из них 
содержится не менее 3 согласных?}
var
  s: string;
  a, b, c, d, e, f, z, k, i, count: integer;
  s1: array[1..3] of char;

begin
  s := '';z := 0;
  s1[1] := 'K';
  s1[2] := 'A';
  s1[3] := 'H';
  for a := 1 to 3 do 
    for b := 1 to 3 do 
      for c := 1 to 3 do 
        for d := 1 to 3 do 
          for e := 1 to 3 do 
            for f := 1 to 3 do 
            begin
              s += s1[a] + s1[b] + s1[c] + s1[d] + s1[e] + s1[f];
              k := 0;
              for i := 1 to 6 do
                if (s[i] = 'K') or (s[i] = 'H') then
                  k += 1;
              if k >= 3 then z += 1;
              s := '';
              count += 1;
            end;
  writeln(z);              
end.