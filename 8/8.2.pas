var
  a, b, c, d, e: char;
  k: integer;
  s: string;

begin
  k := 0;
  for a := 'А' to 'Е' do 
    for b := 'А' to 'Е' do  
      for c := 'А' to 'Е' do  
        for d := 'А' to 'Е' do  
          for e := 'А' to 'Е' do  
          begin
            s := a + b + c + d + e;
            if (s[5] = 'Е') and ('А' in s) and (s[1] <> s[3]) 
            and (s[3] <> s[5]) and (s[2] <> s[4]) then 
              k += 1;
          end;
  writeln(k);            
end.